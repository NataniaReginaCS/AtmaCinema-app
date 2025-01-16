import 'package:flutter/material.dart';
import 'package:main/view/pemesanan/book_seat.dart';
import 'package:main/view/entity/jadwal.dart';
import 'package:main/view/entity/jam.dart';
import 'package:main/view/entity/movie.dart';
import 'package:intl/intl.dart';
import 'package:main/view/pemesanan/movie_review.dart'; 

class MovieDetailsPage extends StatefulWidget {
  final Movie movie;

  const MovieDetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> with SingleTickerProviderStateMixin {
  int selectedDateIndex = 0;
  String? selectedTime;
  List<Jadwal> schedules = [];
  late TabController _tabController;
  late ScrollController _scrollController;
  bool _isSliverAppBarExpanded = false;

  @override
  void initState() {
    super.initState();

    schedules = [
      Jadwal(
        studio: 'STUDIO 1',
        price: 45000,
        jams: [
          Jam(time: '11:00', isAvailable: false),
          Jam(time: '18:50'),
          Jam(time: '21:10'),
        ],
      ),
      Jadwal(
        studio: 'STUDIO 2',
        price: 45000,
        jams: [
          Jam(time: '12:00', isAvailable: false),
          Jam(time: '19:50'),
          Jam(time: '20:00'),
          Jam(time: '21:00'),
        ],
      ),
      Jadwal(
        studio: 'STUDIO 5D',
        price: 80000,
        jams: [
          Jam(time: '11:00', isAvailable: false),
          Jam(time: '13:50', isAvailable: false),
          Jam(time: '18:00'),
          Jam(time: '19:00'),
          Jam(time: '20:00'),
        ],
      ),
    ];

    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        _isSliverAppBarExpanded = _scrollController.offset > 100; 
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: _isSliverAppBarExpanded ? Text(widget.movie.name, style: TextStyle(color: Colors.white)) : null,
            leading: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle, 
                color: Colors.white, 
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context); 
                },
              ),
            ),
            backgroundColor: Color.fromARGB(255, 33, 61, 41),
            expandedHeight: 180.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.movie.videoThumbnail,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 80,
                    left: MediaQuery.of(context).size.width / 2 - 30,
                    child: IconButton(
                      icon: Icon(Icons.play_circle_filled, size: 60, color: Colors.white),
                      onPressed: () {
                        // Logic untuk memutar video
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                // Movie Information Section
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Color.fromARGB(250, 33, 61, 41),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.movie.picture),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Atma Cinema',
                              style: TextStyle(
                                color: Color.fromARGB(255, 219, 196, 127),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.movie.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              color: const Color.fromARGB(255, 0, 255, 0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
                                child: Text(
                                  widget.movie.ages,
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Text(
                              widget.movie.genre,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                            Row(
                              children: [
                                Text(
                                  widget.movie.duration,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                  softWrap: true,  
                                  overflow: TextOverflow.visible,
                                ),
                                SizedBox(width: 20.0),
                
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MovieReview(movie: widget.movie),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.3, 
                                        height: MediaQuery.of(context).size.height * 0.08, 
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 25, 49, 32),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0), 
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center, 
                                            children: [
                                              Text(
                                                widget.movie.rating,
                                                style: TextStyle(
                                                  color: Colors.yellow,
                                                  fontSize: MediaQuery.of(context).size.width * 0.07,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '(12K Reviews)',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: MediaQuery.of(context).size.width * 0.035, 
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                    // Logo Bintang
                                    Positioned(
                                      top: -(MediaQuery.of(context).size.height * 0.03), 
                                      left: -(MediaQuery.of(context).size.width * 0.05), 
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: MediaQuery.of(context).size.width * 0.12,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),

                // Tabs Section
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        tabs: [
                          Tab(text: "Synopsis"),
                          Tab(text: "Schedule"),
                        ],
                      ),
                      Container(
                        height: 800.0,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            // Synopsis Tab
                            SingleChildScrollView(
                              padding: EdgeInsets.all(10),
                              child : Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      widget.movie.synopsis,
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Cast",
                                        style: TextStyle(
                                          fontSize: 20.0, 
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 150.0,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: widget.movie.cast.length,
                                      itemBuilder: (context, index) {
                                        final actor = widget.movie.cast[index];
                                        return Container(
                                          width: 120.0,
                                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 50.0,
                                                backgroundImage: AssetImage(actor.picture),
                                              ),
                                              SizedBox(height: 5.0),
                                              Text(actor.name, textAlign: TextAlign.center),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Photo",
                                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 150.0,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: widget.movie.photos.length,
                                      itemBuilder: (context, index) {
                                        final photo = widget.movie.photos[index];
                                        return Container(
                                          width: 120.0,
                                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(photo),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Schedule Tab
                            widget.movie.status == "Now Playing" ?
                              Column(
                                children: [
                                  // Pilihan Hari
                                  Container(
                                    height: 80,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 6, // Hari yang tersedia
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedDateIndex = index;
                                              selectedTime = null; 
                                              
                                              for (var s in schedules) {
                                                for (var t in s.jams) {
                                                  t.isSelected = false; 
                                                }
                                              }
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                                            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                                            decoration: BoxDecoration(
                                              color: index == selectedDateIndex
                                                  ? Color.fromARGB(255, 68, 90, 74)
                                                  : Colors.grey[300],
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            child: Column(
                                              children: [
                                                Text(
                                                  DateFormat('dd MMM').format(DateTime.now().add(Duration(days: index))),
                                                  style: TextStyle(
                                                    color: index == selectedDateIndex ? Colors.white : Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  index == 0 
                                                    ? 'Today' 
                                                    : '${DateFormat('EEE').format(DateTime.now().add(Duration(days: index)))}',
                                                  style: TextStyle(
                                                    color: index == selectedDateIndex ? Colors.white : Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Divider(),

                                  // Jadwal Studio
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: schedules.length,
                                      itemBuilder: (context, index) {
                                        final schedule = schedules[index];
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${schedule.studio} - Rp${NumberFormat('#,##0').format(schedule.price)}',
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                SizedBox(height: 8.0),
                                                Wrap(
                                                  spacing: 8.0,
                                                  runSpacing: 8.0,
                                                  children: schedule.jams.map((slot) {
                                                    return GestureDetector(
                                                      onTap: slot.isAvailable
                                                          ? () {
                                                              setState(() {
                                                                for (var s in schedules) {
                                                                  for (var t in s.jams) {
                                                                    t.isSelected = false; // Reset pilihan lain
                                                                  }
                                                                }
                                                                slot.isSelected = true;
                                                                selectedTime = slot.time; // Set waktu terpilih
                                                              });
                                                            }
                                                          : null,
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                                                        decoration: BoxDecoration(
                                                          color: slot.isSelected
                                                              ? Color.fromARGB(255, 68, 90, 74)
                                                              : slot.isAvailable
                                                                  ? Colors.grey[300]
                                                                  : Colors.grey[700],
                                                          borderRadius: BorderRadius.circular(5.0),
                                                        ),
                                                        child: Text(
                                                          slot.time,
                                                          style: TextStyle(
                                                            color: slot.isAvailable ? 
                                                              slot.isSelected ? Colors.white : Colors.black 
                                                              : Colors.grey
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                                Divider(),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              )
                            : Padding(
                              padding: EdgeInsets.all(50.0),
                              child: Text(
                                "Sorry, currrently there is no available schedules",
                                style: TextStyle(
                                  color: Colors.grey[500]
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Tombol Booking seat
      bottomNavigationBar: 
        _tabController.index == 1 ? 
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ElevatedButton(
            
              onPressed: selectedTime != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookSeat(movie: widget.movie)),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                disabledBackgroundColor: Colors.grey,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: Text(
                "Book Seat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          )
        : null,
    );
  }
}
