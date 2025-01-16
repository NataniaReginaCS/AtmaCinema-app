import 'package:flutter/material.dart';
import 'package:main/view/entity/movie.dart';

class MovieReview extends StatefulWidget {
  final Movie movie;
  
  const MovieReview({super.key, required this.movie});

  @override
  State<MovieReview> createState() => _MovieReviewState();
}

class _MovieReviewState extends State<MovieReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( 
                  widget.movie.name,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              '8.5',
              style: TextStyle(
                fontSize: 28,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0), 
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30, 
                      backgroundImage: AssetImage('images/profile_image.png'),
                    ),
                    const SizedBox(width: 15), 
                    Expanded(
                      
                      child: Card(
                        color: Colors.grey[50],
                        
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            
                              Text(
                                '20/12/2020', 
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 10),

                          
                              Text(
                                'Tom and Jerry',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),

                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: index < 4 ? Colors.amber : Colors.grey, 
                                    size: 15,
                                  );
                                }),
                              ),
                              const SizedBox(height: 10),

                              // Review User
                              Text(
                                'wow amazinggg',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0), 
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Gambar Profil Bulat
                    CircleAvatar(
                      radius: 30, // Ukuran avatar
                      backgroundImage: AssetImage('images/profile_image.png'),
                    ),
                    const SizedBox(width: 15), 

                
                    Expanded(
                      child: Card(
                        color: Colors.grey[50],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            
                              Text(
                                '21/12/2020', 
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 10),

                          
                              Text(
                                'Wonder Woman 2019',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),

                            
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: index < 4 ? Colors.amber : Colors.grey, 
                                    size:15,
                                  );
                                }),
                              ),
                              const SizedBox(height: 10),

                            
                              Text(
                                'be thee wineerr',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    CircleAvatar(
                      radius: 30, 
                      backgroundImage: AssetImage('images/profile_image.png'), 
                    ),
                    const SizedBox(width: 15), 
                    Expanded(
                      child: Card(
                        color: Colors.grey[50],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            
                              Text(
                                '21/12/2020',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 10),

                              // Nama Film
                              Text(
                                'Transformers',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),

                            
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: index < 4 ? Colors.amber : Colors.grey, 
                                    size:15,
                                  );
                                }),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Bumblebee---',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0), 
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    CircleAvatar(
                      radius: 30, 
                      backgroundImage: AssetImage('images/profile_image.png'),
                    ),
                    const SizedBox(width: 15), 

                  
                    Expanded(
                      child: Card(
                        color: Colors.grey[50],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text(
                                '21/12/2020', // Tanggal
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 10),

                              
                              Text(
                                'Exorcist 2018',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),

                            
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: index < 5 ? Colors.amber : Colors.grey, 
                                    size:15,
                                  );
                                }),
                              ),
                              const SizedBox(height: 10),

                              
                              Text(
                                'SOoo creepyyyyyyyyyy~~',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}