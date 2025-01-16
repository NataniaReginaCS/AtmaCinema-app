import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:main/view/login.dart';
import 'package:main/view/profile/personal_info.dart';
import 'package:main/view/profile/review.dart';
import 'package:main/view/home/welcome.dart';
import 'package:main/view/home/tiket.dart';


class ProfilHome extends StatefulWidget {
  const ProfilHome({super.key});

  @override
  State<ProfilHome> createState() => _ProfilHomeState();
}

class _ProfilHomeState extends State<ProfilHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 61, 41),
          title: Text(
            'Profile',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Welcome()),
              );
            },
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(children: [
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
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '0895421565513',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text("Personal Info"),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: Colors.orange,
                      ),
                    ),
                    tileColor: Colors.white,
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => PersonalInfoPage()));
                    },
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("My Ticket"),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.card_travel,
                            color: Colors.blue,
                          ),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TiketHome()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text("My Film"),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.purple,
                          ),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right),
                      ),
                      ListTile(
                        title: Text("Notifications"),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.orange,
                          ),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right),
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
                            Icons.payment,
                            color: Colors.blue,
                          ),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("FAQs"),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Icon(
                            Icons.question_mark_sharp,
                            color: Colors.orange,
                          ),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right),
                      ),
                      ListTile(
                        title: Text("User Reviews"),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child:
                              Icon(Icons.rate_review_sharp, color: Colors.cyan),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Review()));
                        },
                      ),
                      ListTile(
                        title: Text("Settings"),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Icon(
                            Icons.settings,
                            color: Colors.blue[900],
                          ),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginForm()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                        title: Text("Log Out"),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Icon(
                            Icons.logout,
                            color: Colors.red,
                          ),
                        ),
                        tileColor: Colors.white,
                        trailing: Icon(Icons.chevron_right)),
                  ),
                )
              ]),
            )));
  }
}
