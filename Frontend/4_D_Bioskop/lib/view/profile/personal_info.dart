import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:main/view/profile/edit.dart';
import 'package:main/view/profile/profile.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
        title: Text(
          'Personal Info',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Edit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline, // Garis bawah diterapkan
                ),
              ),
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Ikon kembali (<-)
          onPressed: () {
            // Navigasi ke PersonalInfoPage saat ikon back diklik
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilHome()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child:SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/logo.png'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  const SizedBox(height: 40), 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        'Edwardy',
                        style: TextStyle(
                          
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5), 
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.phone,
                            size: 16,
                            color:Colors.black,
                          ),
                          const SizedBox(width: 5), 
                          Text(
                            '0895421565513',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              SizedBox(height:30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(10),
                
                ),
                  child: Column(
                    children: [
                      
                      ListTile(
                        title: Text("USERNAME"),
                        subtitle: Text("Edwardy"),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.orange, 
                            ),
                          ),
                        tileColor:Colors.white,
                      ),
                      ListTile(
                        title: Text("Email"),
                        subtitle: Text("edwardy@gmail.com"),
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 255, 255, 255), 
                            ),
                            child: Icon(
                              Icons.mail,
                              color: Colors.blue, 
                            ),
                          ),
                        tileColor:Colors.white,
                      ),
                      ListTile(
                        title: Text("PHONE NUMBER"),
                        subtitle: Text("+62 1234 5678 9999"),
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 255, 255, 255), 
                            ),
                            child: Icon(
                              Icons.phone,
                              color: const Color.fromARGB(255, 124, 190, 245), 
                            ),
                          ),
                        tileColor:Colors.white,

                        

                      ),
                      ListTile(
                        title: Text("Payment Method"),
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 255, 255, 255), 
                            ),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Colors.orange 
                            ),
                          ),
                        tileColor:Colors.white,
                    
                      )
                    ],
                  ),
              ),
            ]
          ),
        )
      )
    );
  }
}