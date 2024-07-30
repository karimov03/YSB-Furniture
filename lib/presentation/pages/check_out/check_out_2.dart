import 'package:flutter/material.dart';

import 'check_out_3.dart';

class CheckOut2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkout (2/3)',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Method',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '3 active cards',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Xool card',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Halal Lab\n**** **** **** 1234',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.orange,
                ),
                label: Text(
                  'Add New Address',
                  style: TextStyle(color: Colors.orange),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.orange.shade100),
                  backgroundColor: Colors.orange.shade100,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Recently Used',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Text('Mastercard'),
                    subtitle: Text('**** **** **** 3253'),
                  ),
                ),
                Text('15 April, 2021'),
              ],
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Text('PayPal'),
                    subtitle: Text('**** **** **** 3253'),
                  ),
                ),
                Text('15 April, 2021'),
              ],
            ),

            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut3()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(width: double.maxFinite,child: Text(textAlign: TextAlign.center,'CONTINUE', style: TextStyle(fontSize: 16,color: Colors.white))),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
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
