import 'package:flutter/material.dart';
import 'package:ysb_furniture_app/presentation/pages/screens/cart_page.dart';
import 'package:ysb_furniture_app/presentation/pages/screens/profile_page.dart';
import 'package:ysb_furniture_app/presentation/pages/screens/store_page.dart';

import '../../widgets/chip.dart';
import '../../widgets/top_sales_item.dart';
import '../product/product_page.dart';
import 'favorites_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          _buildHomePageContent(),
          FavoritesPage(),
          StorePage(),
          CartPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
    );
  }

  Widget _buildHomePageContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'New collection\n'),
                    TextSpan(
                        text: 'with ',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: '15% ',
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                        text: 'discount',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductPage()));
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(Icons.image, color: Colors.grey,size: 32,),
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Shop now'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Inspiration by Room',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
      GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductPage()));
        },
        child:
            Container(
              height: 150,decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
              child: Center(
                child: Icon(Icons.image, color: Colors.grey,size: 32,),
              ),
            ),),
            SizedBox(height: 16),
            Container(
              width: double.maxFinite,
              child: Text(
                'Categories',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCategoryChip('Arm Sofa'),
                  buildCategoryChip('Chair', isSelected: true),
                  buildCategoryChip('Side Desks'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Sales',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTopSalesItem(context,'Arm Chair', '\$124.00'),
                buildTopSalesItem(context,'Arm Chair', '\$124.00'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTopSalesItem(context,'Arm Chair', '\$124.00'),
                buildTopSalesItem(context,'Arm Chair', '\$124.00'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTopSalesItem(context,'Arm Chair', '\$124.00'),
                buildTopSalesItem(context,'Arm Chair', '\$124.00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
