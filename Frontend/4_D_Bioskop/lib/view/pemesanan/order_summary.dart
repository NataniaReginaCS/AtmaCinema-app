import 'package:flutter/material.dart';
import 'package:main/view/entity/movie.dart';
import 'package:main/view/pemesanan/payment_success.dart';
import 'package:main/view/pemesanan/select_payment.dart';

class OrderSummary extends StatefulWidget {
  final Movie movie;

  const OrderSummary({super.key, required this.movie});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Order Summary',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
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
                            color: const Color.fromARGB(255, 33, 61, 41),
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
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                        // harusnya ambil data dari studio
                        Text(
                          'PREMIERE, STUDIO 1',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: const Color.fromARGB(255, 33, 61, 41),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                        // harusnya ambil dari jadwal
                        Text(
                          'Friday, 09 Nov 2024, 06:50 PM',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: const Color.fromARGB(255, 33, 61, 41),
                            fontWeight: FontWeight.bold
                          ),
                          softWrap: true,  
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ORDER NUMBER: 220711876',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),

                Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Transaction Detail',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 33, 61, 41),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            // harusnya ambil jumlah tiket dari page sebelumnya
                            '2 Ticket',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'REGULAR SEAT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'SERVICE FEE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'To help improve our services',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'D5, D6',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Rp 80.000 x 4',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Rp 4.000 x 4',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Divider(),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Payment Method',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 33, 61, 41),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.0),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/payment/gopay.png', 
                        width: 70, 
                        height: 70,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'GoPay',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Radio<int>(
                        value: 1,
                        groupValue: selectedValue, 
                        onChanged: (int? value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 12.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectPayment(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.blue, width: 1),
                        minimumSize: Size(255, 40), 
                        maximumSize: Size(255, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), 
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Select Another Payment',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20), 

                    Container(
                      width: 255,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.redAccent[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center( 
                        child: Text(
                          'Complete Your Payment in 06:52',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Text(
                      '* Ticket purchases cannot be changed / cancelled',
                      style: TextStyle(
                        color: Colors.redAccent[100],
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),

              ],
            ),

            SizedBox(height: 20),
            Container(
              height: 70,
              color: Colors.yellowAccent[700],
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 0,
                    top: 20, 
                    child: Image.asset(
                      'images/payment/motic.png', 
                      width: 60,
                      height: 60,
                    ),
                  ),
                  
                  Positioned(
                    right: 0,
                    top: -10, 
                    child: Image.asset(
                      'images/payment/reel.png', 
                      width: 50,
                      height: 50,
                    ),
                  ),
                  
                  Center(
                    child: Text(
                      'Hooray lets finish your payment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: const Color.fromARGB(255, 33, 61, 41),
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 70,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'TOTAL PAYMENT',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Rp 168.000',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 33, 61, 41),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ElevatedButton(
                onPressed: 
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentSuccess(movie: widget.movie),
                      ),
                    );
                  },
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

          ],
        ),
      ),
        
    );
  }
}