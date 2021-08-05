import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled6/start_screens/welcome_screen/welcome-screen.dart';

class ModelView {
  final String title;
  final String body;
  final String image;

  ModelView({this.body, this.image, this.title});
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardingController = PageController();

//
  List<ModelView> modelSplash = [
    ModelView(
        image: 'images/bord1.png',
        title: 'Latest world news',
        body: 'See various news and new and be with the event'),
    ModelView(
        image: 'images/bord2.png',
        title: 'Watch the world\'s newest',
        body:
            'Content of all kinds of local and international news'),
    ModelView(
        image: 'images/bord3.png',
        title: 'Upgrade subscription',
        body:
            'You can upgrade your account and get live news'),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    (route) => false);
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[700],
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [],
              ),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    if (index == modelSplash.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  controller: boardingController,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      builderBoardingItem(modelSplash[index]),
                  itemCount: modelSplash.length,
                ),
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardingController,
                    count: modelSplash.length,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.white70,
                      activeDotColor: Colors.white,
                      dotHeight: 7,
                      expansionFactor: 3,
                      dotWidth: 10,
                      spacing: 4,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      if (isLast) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => WelcomeScreen(),
                              transitionsBuilder: (c, anim, a2, child) =>
                                  FadeTransition(opacity: anim, child: child),
                              transitionDuration: Duration(milliseconds: 1000),
                            ),
                            (route) => false);
                      } else {
                        boardingController.nextPage(
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOutQuad);
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget builderBoardingItem(ModelView modelView) => Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image.asset(
            '${modelView.image}',
            width: 110,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${modelView.title}',
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${modelView.body}',
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
