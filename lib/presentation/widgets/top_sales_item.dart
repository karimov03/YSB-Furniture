

import 'package:flutter/material.dart';

import '../pages/product/product_page.dart';

Widget buildTopSalesItem(BuildContext context,String name, String price) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          children: [GestureDetector(
            onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductPage()));
      },
        child:
            Container(
              alignment: Alignment.center,
              height: 120,
              width: 100,
              child: Icon(Icons.image, color: Colors.grey,size: 32,),
            ),
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

