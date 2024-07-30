import 'package:flutter/material.dart';
import 'package:ysb_furniture_app/presentation/pages/check_out/check_out_1.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('Shopping Cart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('3 items', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text('25%', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  Text('Use code #Wooden at Checkout', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  CartItem(),
                  CartItem(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub total:', style: TextStyle(fontSize: 16)),
                  Text('\$209.85', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping:', style: TextStyle(fontSize: 16)),
                  Text('\$5.85', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cart Total:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('\$214.85', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text('Total:',style: TextStyle(color: Colors.black54),),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut1()));
                  },
                  child: Text('Checkout', style: TextStyle(fontSize: 16,color: Colors.white,fontWeight:FontWeight.w400 )),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                    backgroundColor: Colors.deepOrangeAccent.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.image, size: 32, color: Colors.grey[600]),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hermes Armchair', style: TextStyle(fontSize: 16)),
              SizedBox(height: 4),
              Text('\$729,00', style: TextStyle(fontSize: 16, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
