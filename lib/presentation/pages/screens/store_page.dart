import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final List<Map<String, dynamic>> storeItems = [
    {'title': 'Arm Chair', 'subtitle': 'Chair Made by Wood', 'price': 300, 'isFavorite': true, 'pageController': PageController()},
    {'title': 'Arm Chair', 'subtitle': 'Chair Made by Wood', 'price': 300, 'isFavorite': false, 'pageController': PageController()},
    {'title': 'Arm Chair', 'subtitle': 'Chair Made by Wood', 'price': 300, 'isFavorite': true, 'pageController': PageController()},
    {'title': 'Arm Chair', 'subtitle': 'Chair Made by Wood', 'price': 300, 'isFavorite': false, 'pageController': PageController()},
  ];



  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildCategoryRow(),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: storeItems.length,
                itemBuilder: (context, index) {
                  return _buildStoreItem(storeItems[index], screenHeight);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCategoryButton('Categories'),
        _buildCategoryButton('Explore'),
        _buildCategoryButton('New arrivals'),
      ],
    );
  }

  Widget _buildCategoryButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }

  Widget _buildStoreItem(Map<String, dynamic> item, double screenHeight) {
    PageController _pageController = item['pageController'];

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: Icon(Icons.image, color: Colors.white, size: 50),
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Icon(Icons.image, color: Colors.white, size: 50),
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Icon(Icons.image, color: Colors.white, size: 50),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 20,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.grey,
                      dotColor: Colors.black12,
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 3,
                      spacing: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(item['subtitle']),
                ],
              ),
              Text(
                '\$${item['price']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.brown : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
              IconButton(
                icon: Icon(
                  item['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                  color: item['isFavorite'] ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    item['isFavorite'] = !item['isFavorite'];
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
