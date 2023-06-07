import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../pages/home.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Connect with Hospitals',
      body: 'Decription Decription Decription Decription Decription Decription',
      image: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Image.asset('assets/images/surgery.png'),
        ),
      ),
    ),
    PageViewModel(
      title: 'Second page',
      body: 'Decription',
      image: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Image.asset('assets/images/surgeon-2.png'),
        ),
      ),
    ),
    PageViewModel(
      title: 'Third page',
      body: 'Decription',
      image: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Image.asset('assets/images/surgeon-1.png'),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(20, 20),
            color: Colors.blue,
            activeSize: Size.square(12),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 24,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceInOut,
        ),
      ),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
