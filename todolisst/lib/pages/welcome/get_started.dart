import 'package:baitap1/apps/router/router_name.dart';
import 'package:baitap1/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<OnboardingModel> _pages = [
    OnboardingModel(
      title: 'Easy Time Management',
      description:
          'With management based on priority and daily tasks, it will give you convenience in managing and determining the tasks that must be done first.',
      imagePath: 'assets/images/start1.png',
    ),
    OnboardingModel(
      title: 'Increase Work Effectiveness',
      description:
          'Time management and the determination of more important tasks will give your job statistics better and always improve.',
      imagePath: 'assets/images/start2.png',
    ),
    OnboardingModel(
      title: 'Reminder Notification',
      description:
          'The advantage of this application is that it also provides reminders for you so you don’t forget to keep doing your assignments well and according to the time you have set.',
      imagePath: 'assets/images/start3.png',
    ),
  ];

  void _nextPage() {
    if (_currentIndex < _pages.length - 1) {
      _controller.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      context.goNamed(RouterName.systemmanager);
    }
  }

  void _prevPage() {
    if (_currentIndex > 0) {
      _controller.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(_pages[index].imagePath, height: 250),
                const SizedBox(height: 30),
                Text(
                  _pages[index].title,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Text(
                  _pages[index].description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (_currentIndex > 0)
                      ElevatedButton(
                        onPressed: _prevPage,
                        child: const Icon(Icons.arrow_back),
                      ),
                    ElevatedButton(
                      onPressed: _nextPage,
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(150, 50)
                      ),
                      child: Text(
                        _currentIndex == _pages.length - 1
                            ? 'Get Started'
                            : 'Next',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
