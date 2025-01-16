import 'package:flutter/material.dart';
import 'package:main/view/profile/profile.dart';
import 'package:main/view/home/fnb_list.dart';
import 'package:main/view/makanan.dart';
import 'package:main/view/home/movie_list.dart';
import 'package:main/view/studio.dart';
import 'package:main/view/entity/movie.dart';
import 'package:main/view/pemesanan/movie_detail.dart';

class isiHome extends StatefulWidget {
  @override
  _isiHomeState createState() => _isiHomeState();
}

class _isiHomeState extends State<isiHome> {
  final List<Movie> moviesNowPlaying =
      movies.where((movie) => movie.status == "Now Playing").toList();

  final List<Movie> moviesComingSoon =
      movies.where((movie) => movie.status == "Coming soon").toList();

  final List<Makanan> makanan = List.from(foodie);
  final List<Studio> studio = List.from(studios);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Welcome,\n',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: 'Pinlaw',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(206, 206, 206, 100),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                ),
                style: TextStyle(color: Colors.white),
                onSubmitted: (query) {
                  //querynyaapa
                },
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            color: Colors.white,
            iconSize: 30,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilHome()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 189, 198, 173),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Atma',
                          style: TextStyle(color: Colors.black, fontSize: 37),
                        ),
                        Text(
                          'Cinema',
                          style: TextStyle(color: Colors.black, fontSize: 37),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Image.asset(
                      'images/booknow.png',
                    ),
                  ),
                ],
              ),
            ),
            // PLAYING NOW
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Now Playing",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieList(indextab: 0)),
                      );
                    },
                    child: Text(
                      "See All >",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              child: CarouselView(
                itemExtent: MediaQuery.of(context).size.width * 0.5,
                itemSnapping: true,
                onTap: (int index) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailsPage(
                        movie: moviesNowPlaying[index],
                      ),
                    ),
                  );
                },
                padding: const EdgeInsets.all(8),
                children: List.generate(moviesNowPlaying.length, (int index) {
                  return Column(
                    children: [
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              image:
                                  AssetImage(moviesNowPlaying[index].picture),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        moviesNowPlaying[index].name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
            //coming soon
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Coming soon",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieList(indextab: 1)),
                      );
                    },
                    child: Text(
                      "See All >",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              child: CarouselView(
                itemExtent: MediaQuery.of(context).size.width * 0.5,
                itemSnapping: true,
                padding: const EdgeInsets.all(8),
                onTap: (int index) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailsPage(
                        movie: moviesComingSoon[index],
                      ),
                    ),
                  );
                },
                children: List.generate(moviesComingSoon.length, (int index) {
                  return Column(
                    children: [
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              image:
                                  AssetImage(moviesComingSoon[index].picture),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        moviesComingSoon[index].name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                }),
              ),
            ),
            // FnB
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FnB For a Great Time",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListNamaView()),
                      );
                    },
                    child: Text(
                      "See All >",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: CarouselView(
                itemExtent: MediaQuery.sizeOf(context).width * 0.4,
                itemSnapping: true,
                elevation: 4,
                padding: const EdgeInsets.all(8),
                children: List.generate(makanan.length, (int index) {
                  return Container(
                    color: Colors.grey,
                    child: Image.asset(
                      (makanan[index].picture),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
            //STUDIO
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Experience our studios!",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: CarouselView(
                itemExtent: MediaQuery.of(context).size.width,
                itemSnapping: true,
                padding: const EdgeInsets.all(8),
                children: List.generate(studio.length, (int index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(studio[index].picture),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              studio[index].name,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              studio[index].deskripsi,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            //End
            SizedBox(height: 100),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.movie,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'That’s all for now',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
