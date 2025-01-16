import 'package:flutter/material.dart';
import 'package:main/component/form_component.dart';
import 'package:main/view/register.dart';
import 'package:main/view/home/welcome.dart';

class LoginForm extends StatefulWidget {
  final  Map? data;

  const LoginForm({super.key, this.data});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailPhoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Map? dataForm = widget.data;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 61, 41),
      body: SafeArea(
        child: SingleChildScrollView(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0.0, 2.0),
                image: AssetImage("images/rectangle.png"),
              ),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 320.0),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),

                  // email or phone
                  Padding(
                    padding: const EdgeInsets.only(left: 43),
                    child: Text(
                      "Email / Phone Number",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  inputForm((p0) {
                    if (p0 == null || p0.isEmpty) {
                      return "username tidak boleh kosong";
                    }
                    return null;
                  },
                      controller: emailPhoneController,
                      hintTxt: "Email/Phone Number"),
                  
                  // password
                  SizedBox(height: 20),
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
                  inputForm((p0) {
                    if(p0 == null || p0.isEmpty){
                      return "password kosong";
                    }
                    return null;
                  }, 
                      password: true,
                      controller: passwordController,
                      hintTxt: "Password"),
                  SizedBox(height: 10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(

                          children: [
                            Checkbox(value: false, onChanged: (value) {}), 
                            Text('Remember me'),
                            SizedBox(width: 60),
                            TextButton(
                              onPressed: () {
                                
                              },
                              child: Text('Forgot password?'),
                            ),
                          ],
                        ),
                      ),
        
                      SizedBox(height: 10),
        
                      ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            if((dataForm!['email'] == emailPhoneController.text || dataForm['phone'] == emailPhoneController.text) && dataForm['password'] == passwordController.text)
                            {
                              // jika sesuai navigasi ke halman home
                              Navigator.pushReplacement(
                                context, 
                                MaterialPageRoute(
                                  builder: (_) => const Welcome() ));
                            }else{
                              
                              showDialog(context: context, builder: (_) => AlertDialog(
                                title: const Text('Password Salah'),
                                
                                content: TextButton(
                                  onPressed: () => pushRegister(context), 
                                  child: const Text('Daftar Disini !!')),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'), 
                                    child: const Text('Cancel'),
                                  ),
                                ],
                              ),);
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(  
                          backgroundColor: Colors.grey[350],
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
        
                      SizedBox(height: 10),
                      
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
                            "Sign in with",
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

                      SizedBox(height: 10),

                      ElevatedButton(
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
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              Map<String, dynamic> formData = {};
                              formData['email'] = emailPhoneController.text;
                              formData['phone'] = emailPhoneController.text;
                              formData['password'] = passwordController.text;
                              pushRegister(context);  
                            },
                            child: Text('Sign Up'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void pushRegister(BuildContext context) {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (_) => const RegisterForm(),),);
  }
}