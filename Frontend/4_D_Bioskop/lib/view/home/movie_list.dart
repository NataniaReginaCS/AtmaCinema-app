import 'package:flutter/material.dart';
import 'package:main/view/entity/movie.dart';
import 'package:main/view/profile/profile.dart';

List<String> titles = <String>[
  'Now Playing',
  'Coming Soon',
];

class MovieList extends StatelessWidget {
  final int indextab;
  const MovieList({super.key, this.indextab = 0});

  @override
  Widget build(BuildContext context) {
    const int tab = 2;

    return DefaultTabController(
      initialIndex: indextab,
      length: tab,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 33, 61, 41),
          title: Text(
            'Movies',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Color.fromARGB(255, 33, 61, 41),
                tabs: <Widget>[
                  Tab(text: titles[0]),
                  Tab(text: titles[1]),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  MovieGrid(status: 'Now Playing'),
                  MovieGrid(status: 'Coming soon'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieGrid extends StatelessWidget {
  final String status;

  const MovieGrid({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filteredMovies =
        movies.where((movie) => movie.status == status).toList();

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.5,
        mainAxisSpacing: 0.5,
        childAspectRatio: 0.45,
      ),
      itemCount: filteredMovies.length,
      itemBuilder: (BuildContext context, int index) {
        final movie = filteredMovies[index];
        return MovieItem(movie: movie);
      },
    );
  }
}

class MovieItem extends StatefulWidget {
  final Movie movie;

  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  _MovieItemState createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilHome()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 200,
                    height: 350,
                    child: Image.asset(
                      widget.movie.picture,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: Icon(
                    isFavorited ? Icons.favorite : Icons.favorite_border,
                    color: isFavorited ? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorited = !isFavorited;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Column(
            children: [
              Text(
                widget.movie.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  
                ),
              ),
              Text(
                widget.movie.genre,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
