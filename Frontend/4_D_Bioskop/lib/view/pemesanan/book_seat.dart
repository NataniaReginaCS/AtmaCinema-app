import 'package:flutter/material.dart';
// import 'package:main/view/entity/jadwal.dart';
import 'package:main/view/entity/movie.dart';
import 'package:main/view/pemesanan/order_summary.dart';

class BookSeat extends StatefulWidget {
  final Movie movie; 
  // final Jadwal schedule;

  const BookSeat({super.key, required this.movie});

  @override
  State<BookSeat> createState() => _BookSeatState();
}

class _BookSeatState extends State<BookSeat> {
  int seatCount = 0; 
  final int pricePerSeat = 45000; 

  // Fungsi menambah jumlah seat
  void incrementSeat() {
    setState(() {
      seatCount++;
    });
  }

  // Fungsi mengurangi jumlah seat
  void decrementSeat() {
    if (seatCount > 0) {
      setState(() {
        seatCount--;
      });
    }
  }

  // Menghitung total harga 
  int get totalPrice {
    return seatCount * pricePerSeat;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.movie.name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // harsunya dari jadawl ini
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
               '09 Nov | 18:50',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total Seat :',
              style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decrementSeat,
                ),
                Text(
                  '$seatCount',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: incrementSeat,
                ),
              ],
            ),
            SizedBox(height: 20),
            
            Text(
              'Total: Rp${totalPrice.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar:
        Padding(
            padding: const EdgeInsets.all(0.0),
            child: ElevatedButton(
              onPressed: seatCount > 0
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderSummary(movie: widget.movie),
                      ),
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
                "Complete Payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
    );
  }
}