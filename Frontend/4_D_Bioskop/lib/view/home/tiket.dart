import 'package:flutter/material.dart';
// import 'package:main/view/pemesanan/ticket_detail.dart';
// import 'package:main/view/entity/movie.dart';
import 'package:main/view/pemesanan/reviewTiket.dart';

class TiketHome extends StatefulWidget {
  @override
  _TiketHomeState createState() => _TiketHomeState();
}

class _TiketHomeState extends State<TiketHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Find History',
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: [
            Tab(text: 'ACTIVE TICKET'),
            Tab(text: 'WATCH HISTORY'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ActiveTicketTab(),
          WatchHistoryTab(),
        ],
      ),
    );
  }
}

class ActiveTicketTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        TicketCard1(),
        TicketCard2(),
        TicketCard3(),
      ],
    );
  }
}

class WatchHistoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        HistoryCard1(),
        HistoryCard2(),
        HistoryCard3(),
        HistoryCard4(),
        HistoryCard5(),
      ],
    );
  }
}

class TicketCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bolehkah Kumenangis?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('4 Tiket'),
                    Text('Friday, 1 November 2024'),
                    Text('20:30 PM'),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TicketCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Annoying Brother',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('2 Ticket'),
                    Text('Saturday, 2 November 2024'),
                    Text('20:30 PM'),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                        foregroundColor: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TicketCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Five Night At Freddy',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('4 Ticket'),
                    Text('Monday, 3 November 2024'),
                    Text('20:30 PM'),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                        foregroundColor: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Venom',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('4 Tiket'),
                    Text('Monday, 3 November 2024'),
                    Text('20:30 PM'),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ReviewTiket()), 
                      );
                    },
                    child: Text('Rate'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                        foregroundColor: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      print('Detail button pressed');
                    },
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                        foregroundColor: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie5.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jatuh Cinta',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('4 Tiket'),
                    Text('Monday, 3 November 2024'),
                    Text('20:30 PM'),
                    Row(
                      children: List.generate(
                          5,
                          (index) =>
                              Icon(Icons.star, color: Colors.yellow, size: 20)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                        foregroundColor: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie6.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wild Robot',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('4 Tiket'),
                    Text('Monday, 3 November 2024'),
                    Text('20:30 PM'),
                    Row(
                      children: List.generate(
                          1,
                          (index) =>
                              Icon(Icons.star, color: Colors.yellow, size: 20)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                        foregroundColor: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie7.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wish',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('4 Tiket'),
                    Text('Monday, 3 November 2024'),
                    Text('20:30 PM'),
                    Row(
                      children: List.generate(
                          4,
                          (index) =>
                              Icon(Icons.star, color: Colors.yellow, size: 20)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                      foregroundColor: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/movie/movie8.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Paw Patrol',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('ATMA CINEMA'),
                    Text('4 Tiket'),
                    Text('Monday, 3 November 2024'),
                    Text('20:30 PM'),
                    Row(
                      children: List.generate(
                          3,
                          (index) =>
                              Icon(Icons.star, color: Colors.yellow, size: 20)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Detail'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
                        foregroundColor: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
