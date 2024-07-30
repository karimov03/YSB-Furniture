import 'package:flutter/material.dart';
import 'package:ysb_furniture_app/presentation/pages/check_out/check_out_2.dart';



class CheckOut1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {  Navigator.pop(context);},
        ),
        title: Text('Checkout (1/3)',style: TextStyle(fontSize: 18),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select Delivery Address', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              AddressCard(
                addressType: 'Home',
                address: 'Abu Dhabi Mail -10th-Al Zahiyah,Abu Dhabi United Arab Emirates',
                icon: Icons.home,
              ),
              SizedBox(height: 16),
              AddressCard(
                addressType: 'Work',
                address: 'Abu Dhabi Mail -10th-Al Zahiyah,Abu Dhabi United Arab Emirates',
                icon: Icons.work,
              ),
              SizedBox(height: 16),
              Container(
                width: double.maxFinite,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle_outline_outlined, color: Colors.orange),
                  label: Text('Add New Address', style: TextStyle(color: Colors.orange)),
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
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut2()));
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
      padding: EdgeInsets.all(24),
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
