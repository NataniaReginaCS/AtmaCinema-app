import 'package:flutter/material.dart';
import 'package:main/view/home/welcome.dart';

class ReviewTiket extends StatefulWidget {
  @override
  _ReviewTiketState createState() => _ReviewTiketState();
}

class _ReviewTiketState extends State<ReviewTiket> {
  int _rating = 0;
  TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text('Review')),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 61, 41),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'images/movie/movie4.jpg', 
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Venom : The Last Dance',  
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _rating = index + 1;
                          });
                        },
                        child: Icon(
                          index < _rating ? Icons.star : Icons.star_border, 
                          color: Colors.yellow,
                          size: 30,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            TextField(
              controller: _commentController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Komentar tentang film',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12),
              ),
            ),
            SizedBox(height: 20),
           ElevatedButton(
              onPressed: () {
                // Pindah ke halaman Welcome
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcome(),
                  ),
                ).then((_) {
                  
                });
              },
              child: Text('Kirim'),
            ),
          ],
        ),
      ),
    );
  }
}
