
import 'package:flutter/material.dart';
import 'package:ysb_furniture_app/presentation/pages/check_out/succes.dart';

class CheckOut3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Checkout (3/3)'),
        centerTitle: true,
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
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
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
            Text(
              'Address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            AddressCard(
              addressType: 'Home',
              address: 'Abu Dhabi Mail -10th-Al Zahiyah,Abu Dhabi United Arab Emirates',
              icon: Icons.home,
            ),
            SizedBox(height: 10),
            AddressCard(
              addressType: 'Work',
              address: 'Abu Dhabi Mail -10th-Al Zahiyah,Abu Dhabi United Arab Emirates',
              icon: Icons.work,
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Succes()),
                        (route) => false, // This removes all previous routes
                  );

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

class AddressCard extends StatelessWidget {
  final String addressType;
  final String address;
  final IconData icon;

  AddressCard({
    required this.addressType,
    required this.address,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: Colors.black),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(addressType, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(address, style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}