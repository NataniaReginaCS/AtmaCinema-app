class Studio {
  final String name;
  final String deskripsi;
  final String picture;
  const Studio(this.name, this.deskripsi, this.picture);
}

final List<Studio> studios = _studios
    .map((e) => Studio(
        e['name'] as String, e['deskripsi'] as String, e['picture'] as String))
    .toList(growable: false);

final List<Map<String, Object>> _studios = [
  {
    "picture": "images/studio/studio1.jpg",
    "name": "Deluxe Studio",
    "deskripsi":
        "Deluxe Studio menawarkan pengalaman menonton film yang mewah dengan kursi yang dapat direbahkan sepenuhnya dan ruang legroom yang luas."
  },
  {
    "picture": "images/studio/studio2.jpg",
    "name": "Starium",
    "deskripsi":
        "Starium adalah studio dengan layar super lebar yang menciptakan pengalaman menonton sinematik yang mendalam."
  },
  {
    "picture": "images/studio/studio3.jpg",
    "name": "The Premiere Studio",
    "deskripsi":
        "The Premiere Studio dirancang dengan kursi premium yang luas dan layanan makanan di tempat dengan eksklusif."
  }
];