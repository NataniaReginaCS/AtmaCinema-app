import 'package:flutter/material.dart';
import 'package:main/view/login.dart';
import 'package:main/component/form_component.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController dobController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 61, 41),
      body: SafeArea(
        child: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,  
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1.0),
                    height: MediaQuery.of(context).size.height * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    )
                  ),
                ),

                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 175.0),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 43),
                        child: Text(
                          "Username",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      inputForm(
                        (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return "Username can`t be empty";
                          }
                          return null;
                        },
                          controller: usernameController,
                          hintTxt: "Username"),
                    
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 43),
                        child: Text(
                          "Phone Number",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      inputForm(
                      (p0) {
                        final RegExp regex = RegExp(r'^08[1-9]\d{7,11}$');
                        if (p0 == null || p0.isEmpty) {
                          return "Phone Number can`t be empty";
                        }
                        if(!regex.hasMatch(p0)){
                          return "Phone Number isn`t valid";
                        }
                        return null;
                      },
                        controller: phoneController,
                        hintTxt: "Phone Number"),

                      SizedBox(height: 10),
                      Padding(
                          padding: const EdgeInsets.only(left: 43),
                          child: Text(
                            "Email",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      inputForm(
                        (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return "Email can`t be empty";
                          }
                          if(!p0.contains('@')){
                            return "Email must contain @";
                          }
                          return null;
                        },
                          controller: emailController,
                          hintTxt: "Email"),

                      SizedBox(height: 10),
                      Padding(
                          padding: const EdgeInsets.only(left: 43),
                          child: Text(
                            "Date of Birth",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      inputForm(
                        (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return "Date of Birth can`t be empty";
                          }
                          return null;
                        },
                          controller: dobController,
                          hintTxt: "Date of Birth"),

                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 43),
                        child: Text(
                          "Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      inputForm(
                      (p0) {
                        if (p0 == null || p0.isEmpty) {
                          return "Password can`t be empty";
                        }
                        if(p0.length<5){
                          return "Password must more than 5 digit";
                        }
                        return null;
                      },
                        controller: passwordController,
                        hintTxt: "Password",
                        password: true),

                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 43),
                        child: Text(
                          "Confirm Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      inputForm(
                      (p0) {
                        if (p0 == null || p0.isEmpty) {
                          return "Password can`t be empty";
                        }
                        if (p0 != passwordController.text) {
                          return "Password isn`t same";
                        }
                        return null;
                      },
                        controller: confirmPassController,
                        hintTxt: "Confirm Password",
                        password: true),
            
                      SizedBox(height: 10),
            
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 155),
                        child: AnimatedButton(
                          text: 'Register',
                          buttonTextStyle: TextStyle(
                            color: Colors.black,
                          ),
                          color: Colors.grey,
                          pressEvent: () {
                            if (_formKey.currentState!.validate()) {
                              // Simpan form data
                              Map<String, dynamic> formData = {};
                              formData['email'] = emailController.text;
                              formData['phone'] = phoneController.text;
                              formData['password'] = passwordController.text;

                              AwesomeDialog(
                                context: context,
                                animType: AnimType.leftSlide,
                                headerAnimationLoop: false,
                                dialogType: DialogType.success,
                                showCloseIcon: true,
                                title: 'Success',
                                desc: 'Registration successful!',
                                btnOkOnPress: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => LoginForm(data: formData),
                                    ),
                                  );
                                },
                                btnOkIcon: Icons.check_circle,
                                onDismissCallback: (type) {
                                  debugPrint('Dialog dismissed from callback $type');
                                },
                              ).show();
                            }
                          },
                        ),
                      ),

                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 110,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1, 
                              endIndent: 5, 
                            ),
                          ),
                          Text(
                            "Sign up with",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 110,
                            child: Divider(
                              color: Colors.grey, 
                              thickness: 1, 
                              indent: 5,
                            ),
                          ),
                        ],
                      ),
        
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 180),
                        child: ElevatedButton(
                          onPressed: () {
                        
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[350], 
                            shape: CircleBorder(), 
                            padding: EdgeInsets.all(15), 
                          ),
                          child: SizedBox(
                            width: 30,
                            height:30,          
                            child: Image(
                              image: AssetImage("images/Google.png"),
                            ),
                          ),
                        ),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginForm()),
                              );
                            },
                            child: Text('Sign In'),
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}