import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'login_page/sign_in.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _mainPageController = PageController();
  final Map<int, PageController> _subPageControllers = {
    1: PageController(),
    2: PageController(),
    3: PageController(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _mainPageController,
        children: [
          buildMainPage(
            context,
            1,
            'assets/images/logo.png',
            'assets/images/1.png',
            'Experience Furniture With Augmented Reality',
            'You can try furniture from the catalog in your home with AR.',
          ),
          buildMainPage(
            context,
            2,
            'assets/images/logo.png',
            'assets/images/2.png',
            'Look at the Furniture on Each Side',
            'You can try furniture from the catalog in your home with AR.',
          ),
          buildMainPage(
            context,
            3,
            'assets/images/logo.png',
            'assets/images/3.png',
            'Explore Modern Furniture',
            'You can try furniture from the catalog in your home with AR.',
          ),
        ],
      ),
    );
  }
  Widget buildMainPage(BuildContext context, int mainPageIndex,
      String imagePath, String mainPageImage, String title,
      String description) {
    return Stack(
      children: [
        PageView(
          controller: _subPageControllers[mainPageIndex],
          children: [
            buildMainPageHome(
                context, mainPageImage, '$mainPageIndex', title, description),
            buildSubPage(
                context, imagePath, '$mainPageIndex.1', title, description),
            buildSubPage(
                context, imagePath, '$mainPageIndex.2', title, description),
            buildSubPage(
                context, imagePath, '$mainPageIndex.3', title, description),
          ],
        ),
        Positioned(
          bottom: 30,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  if (mainPageIndex == 3) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  } else {
                    _mainPageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                  backgroundColor: Colors.orangeAccent
                ),
                onPressed: () {
                  if (_subPageControllers[mainPageIndex]!.page ==
                      _subPageControllers[mainPageIndex]!.initialPage + 3) {
                    if (mainPageIndex == 3) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    } else {
                      _mainPageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  } else {
                    _subPageControllers[mainPageIndex]!.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: Icon(Icons.arrow_forward,color: Colors.black,),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget buildSubPage(BuildContext context, String imagePath, String pageNumber,
      String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24,),
          Text(
            'AR Furniture Setup Page:$pageNumber',
            style: TextStyle(
                fontSize: 16, color: Colors.orange),
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0,top: 50),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildMainPageHome(BuildContext context, String imagePath,
      String pageNumber, String title, String description) {
    final PageController _pageController = PageController();
    final double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: screenHeight / 2,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Image.asset(imagePath),
                    Image.asset(imagePath),
                    Image.asset(imagePath),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: screenHeight / 2,
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
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Page ${pageNumber} AR Furniture Setup',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}

