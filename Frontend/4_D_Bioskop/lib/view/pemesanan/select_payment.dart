import 'package:flutter/material.dart';

class SelectPayment extends StatelessWidget {
  const SelectPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Payment',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 33, 61, 41),
      ),
      
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'E-Wallet',
              textAlign: TextAlign.left,
              style: TextStyle( 
                fontWeight: FontWeight.bold,
                fontSize: 34.0,
              ),  
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80),
                    maximumSize: Size(80, 80), 
                    backgroundColor: Colors.grey[400], 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Center( 
                    child: Image.asset(
                      'images/payment/dana.png',
                      width: 70, 
                      height: 70, 
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80), 
                    maximumSize: Size(80, 80),
                    backgroundColor: Colors.grey[400], 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Center( 
                    child: Image.asset(
                      'images/payment/shoppepay.png',
                      width: 70, 
                      height: 70, 
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 80), 
                    maximumSize: Size(80, 80),
                    backgroundColor: Colors.grey[400], 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Center( 
                    child: Image.asset(
                      'images/payment/ovo.png',
                      width: 70, 
                      height: 70, 
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 80), 
                maximumSize: Size(80, 80),
                backgroundColor: Colors.grey[400], 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                padding: EdgeInsets.zero,
              ),
              child: Center( 
                child: Image.asset(
                  'images/payment/gopay.png',
                  width: 70, 
                  height: 70, 
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'QRIS',
              textAlign: TextAlign.left,
              style: TextStyle( 
                fontWeight: FontWeight.bold,
                fontSize: 34.0,
              ),  
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 80), 
                maximumSize: Size(80, 80),
                backgroundColor: Colors.grey[400], 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                padding: EdgeInsets.zero,
              ),
              child: Center( 
                child: Image.asset(
                  'images/payment/qris.png',
                  width: 70, 
                  height: 70, 
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}