

import 'package:flutter/material.dart';

Widget buildTopSalesItem(String name, String price) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 120,
              width: 100,
              child: Text('Image Placeholder',textAlign: TextAlign.center,),
            ),
            SizedBox(height: 4),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0,)
                    ,
                    Text(
                      price,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Icon(Icons.star,color: Colors.yellowAccent,)
              ],
            ),
           SizedBox(height: 15.0,)
          ],
        ),
      ),
    ),
  );
}

