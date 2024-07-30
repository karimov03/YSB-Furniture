import 'package:flutter/material.dart';
import 'package:ysb_furniture_app/presentation/pages/screens/home_page.dart';

class Succes extends StatelessWidget {
  const Succes({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false, // This removes all previous routes
        );
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Order Success",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Your order #76534 is completed. Please check the delivery status at the Order Tracking page.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
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
        ),
      ),
    );
  }
}
