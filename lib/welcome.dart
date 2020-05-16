import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
//import 'package:vsapp/homepage.dart';
import 'signup.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SignUp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return SafeArea(
      child: Container(
        child: IntroductionScreen(
          key: introKey,
          pages: [
            PageViewModel(
              title: "Track daily calories",
              body:
              "Add whatever you eat to keep track of your daily calories intake",
              image: Container(
                width: 30.0,
                height: 30.0,
                child: Image.asset(
                  'images/calories.png',
                  height: 30.0,
                  width: 30.0,
                ),
              ),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Count the steps",
              body:
              "Pedometer will keep counting your steps to count the calories burnt",
              image: Container(
                width: 30.0,
                height: 30.0,
                child: Image.asset(
                  'images/pedometer.png',
                  height: 30.0,
                  width: 30.0,
                ),
              ),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Interactive Dashboard",
              body:
              "Beautiful Dashboard to check all your helath stats at a single place",
              image: Container(
                height: 30.0,
                width: 30.0,
                child: Image.asset(
                  'images/dashboard.png',
                  height: 30.0,
                  width: 30.0,
                ),
              ),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Stay Hydrated",
              body: "Track your daily water intake and stay hydrated",
              image: Container(
                width: 30.0,
                height: 30.0,
                child: Image.asset(
                  'images/hydrated.png',
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              decoration: pageDecoration,
            ),

          ],
          onDone: () => _onIntroEnd(context),
          onSkip: () => _onIntroEnd(context), // You can override onSkip callback
          showSkipButton: true,
          skipFlex: 0,
          nextFlex: 0,
          skip: const Text('Skip'),
          next: const Icon(Icons.arrow_forward),
          done:
          const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFBDBDBD),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
