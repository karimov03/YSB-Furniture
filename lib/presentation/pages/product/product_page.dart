import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_outlined,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.local_grocery_store_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 333.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                        child:
                            Icon(Icons.image, size: 100, color: Colors.grey)),
                  ),
                ),
                Container(
                  height: 333,
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.threed_rotation_outlined,color: Colors.lightGreenAccent,),
                        label: Text('3D View',style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 15.0),
                      ElevatedButton.icon(
                        onPressed: () {},

                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        icon: Icon(Icons.photo_outlined,color: Colors.lightBlueAccent,),
                        label: Text('Photos',style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.0),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arm Chair',
                        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                      ),
              Text('Chair made by wood'),

                    ],
                  ),
              Text(
                '\$300',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),

                ],
              ),
            ),
            SizedBox(height: 8.0),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                alignment: Alignment.centerLeft,
                  child: Text('COLOR', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 20))),
            ),
            SizedBox(height: 8.0),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CircleAvatar(
                      radius: 15,

                      backgroundColor: Colors.primaries[index],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 16.0),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: Text('Materials'),
                children: [Text('Cotton'),Text('Cotton'),Text('Cotton'),],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: Text('Fabric'),

                children: [Text('Kokand fabric'),Text('Kokand fabric'),Text('Kokand fabric'),],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text('Dimensions'),
                children: [
                  _buildDimensionRow(
                      'Overall Dimensions', '34" L x 30" D x 33" H'),
                  _buildDimensionRow('Seat Height', '17"'),
                  _buildDimensionRow('Arm Height', '24"'),
                  _buildDimensionRow('Seat Depth', '22"'),
                  _buildDimensionRow('Leg Height', '17"'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0)
                ),
                height: 300.0,
                child: Center(
                    child: Icon(Icons.chair, size: 100, color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About this piece',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),

              SizedBox(height: 8,),
              Text(
                'This stately chair ought to come with a large "do not disturb" sign. This classic ode to comfort is the chair that every living room deserves. Includes a year-long pass to utter things like "I was watching that" with eyes closed. ',
              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),

            SizedBox(height: 16.0),

            Text('Fitting Video',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      height: 200.0,
                      child: Center(
                          child: Icon(Icons.videocam, size: 100, color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.local_grocery_store_outlined,color: Colors.black54,),
                    label: Text('Add To Cart',style: TextStyle(color: Colors.black54),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                  )
,
                  ElevatedButton(
                    onPressed: () {

                    } ,
                    child: Text(
                      'Buy now',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(

                      padding: EdgeInsets.only(top: 10, bottom: 10,left: 25,right: 25),
                      backgroundColor: Colors.deepOrangeAccent.shade200
                          ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDimensionRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
