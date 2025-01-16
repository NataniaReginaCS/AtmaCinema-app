import 'actor.dart';

class Movie {
  final String name;
  final String genre;
  final String picture;
  final String status;
  final String videoThumbnail;
  final String rating;
  final String synopsis;
  final String ages;
  final String duration;
  final List<Actor> cast;
  final List<String> photos;

  const Movie(this.name, this.genre, this.picture, this.status, this.videoThumbnail, this.rating, this.synopsis, this.ages, this.duration, this.cast, this.photos);
}

// final List<Movie> movies = _movies
//     .map((e) => Movie(e['name'] as String, e['genre'] as String,
//         e['picture'] as String, e['status'] as String))
//     .toList(growable: false);

final List<Movie> movies = _movies.map((e) {
  return Movie(
    e['name'] as String,
    e['genre'] as String,
    e['picture'] as String,
    e['status'] as String,
    e['videoThumbnail'] as String, 
    e['rating'] as String, 
    e['synopsis'] as String,
    e['ages'] as String,
    e['duration'] as String,
    (e['cast'] as List)
        .map((actor) => Actor(name: actor['name'] as String, picture: actor['picture'] as String))
        .toList(), 
    (e['photos'] as List<String>), 
  );
}).toList(growable: false);

final List<Map<String, Object>> _movies = [
  { 
    'picture': 'images/movie/movie1.jpg',
    'name': 'Bolehkah Kumenangis?',
    'genre': 'Drama',
    'status': 'Now Playing',
    'videoThumbnail': 'images/movie/movie1.jpg',
    'rating': '8.5',
    'synopsis': 'Setelah kakaknya meninggalkan rumah, Tari berjuang sendirian untuk menyelamatkan Ibunya dari Ayahnya yang abusive. Tari yang sejak kecil menyimpan banyak sekali trauma, sudah tidak mampu menahan beban ini. Ditemani Baskara, seorang pria temperamental yang juga bergabung di support group yang sama. Mampukah Tari melewati Trauma yang ia punya dan tidak lagi menyimpan tangisnya sendiri?',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 1', 'picture': 'images/actor/actor1.png'},
      {'name': 'Actor 2', 'picture': 'images/actor/actor2.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie2.jpg",
    "name": "My Annoying Brother",
    "genre": "Comedy, Drama",
    "status": "Now Playing",
    'videoThumbnail': 'images/movie/movie2.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie3.jpg",
    "name": "Five Nights at Freddy's",
    "genre": "Horror",
    "status": "Now Playing",
    'videoThumbnail': 'images/movie/movie3.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie4.jpg",
    "name": "Venom 3",
    "genre": "Action, Sci-Fi",
    "status": "Now Playing",
    'videoThumbnail': 'images/movie/movie4.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie5.jpg",
    "name": "Jatuh Cinta Seperti di Film Film",
    "genre": "Romantis",
    "status": "Now Playing",
    'videoThumbnail': 'images/movie/movie5.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie6.jpg",
    "name": "The Wild Robot",
    "genre": "Animasi, Petualangan",
    "status": "Coming soon",
    'videoThumbnail': 'images/movie/movie6.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie7.jpg",
    "name": "Wish",
    "genre": "Animasi, Fantasi",
    "status": "Coming soon",
    'videoThumbnail': 'images/movie/movie7.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie8.jpg",
    "name": "Paw Patrol: The Mighty Movie",
    "genre": "Animasi, Aksi, Keluarga",
    "status": "Coming soon",
    'videoThumbnail': 'images/movie/movie8.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie9.jpg",
    "name": "Hotel Transylvania",
    "genre": "Animasi, Komedi",
    "status": "Coming soon",
    'videoThumbnail': 'images/movie/movie9.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
  {
    "picture": "images/movie/movie10.jpg",
    "name": "Minions: The Rise of Gru",
    "genre": "Animasi, Komedi",
    "status": "Coming soon",
    'videoThumbnail': 'images/movie/movie10.jpg',
    'rating': '8.5',
    'synopsis': 'Belum ada sinopsis',
    'ages': 'G',
    'duration': '1 H 40 M',
    'cast': [
      {'name': 'Actor 3', 'picture': 'images/actor/actor3.png'},
      {'name': 'Actor 4', 'picture': 'images/actor/actor4.png'},
    ],
    'photos': [
      'images/photo/photos1.jpg',
    ],
  },
];
