import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<Map<String, dynamic>> wishlistItems = [
    {'title': 'VEDBO', 'subtitle': 'Armchair, Gunnared', 'rating': 4.0},
    {'title': 'STRANDMON', 'subtitle': 'Wing chair', 'rating': 4.5},
    {'title': 'PELLO', 'subtitle': 'Armchair, natural', 'rating': 3.5},
    {'title': 'VEDBO', 'subtitle': 'Armchair, Gunnared', 'rating': 4.0},
    {'title': 'STRANDMON', 'subtitle': 'Wing chair', 'rating': 4.5},
    {'title': 'PELLO', 'subtitle': 'Armchair, natural', 'rating': 3.5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Wishlist'),
        centerTitle: true,
        forceMaterialTransparency: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_bag_outlined),
                onPressed: () {},
              ),
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Wishlist (${wishlistItems.length})',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: wishlistItems.map((item) {
                  return _buildWishlistItem(
                    item['title'],
                    item['subtitle'],
                    item['rating'],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWishlistItem(String title, String subtitle, double rating) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.grey[400],
            child: Icon(Icons.image, color: Colors.white),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(subtitle),
                Row(
                  children: [
                    ..._buildRatingStars(rating),
                    SizedBox(width: 8),
                    Text("4.3"),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  List<Widget> _buildRatingStars(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    for (int i = 0; i < fullStars; i++) {
      stars.add(Icon(Icons.star, color: Colors.amber, size: 16));
    }
    if (rating - fullStars >= 0.5) {
      stars.add(Icon(Icons.star_half, color: Colors.amber, size: 16));
    }
    while (stars.length < 5) {
      stars.add(Icon(Icons.star_border, color: Colors.amber, size: 16));
    }
    return stars;
  }
}
