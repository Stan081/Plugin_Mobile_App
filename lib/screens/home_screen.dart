import 'package:flutter/material.dart';
import 'package:plugin_app/widgets/onboarding_image_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imagePaths = [
    'assets/images/onboarding_1.png',
    'assets/images/onboarding_2.png',
    'assets/images/onboarding_3.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(8, 8),
        child: Container(
          color: const Color.fromRGBO(188, 23, 35, 1),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(188, 23, 35, 1),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: PageView.builder(
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return OnboardingImageSlider(
                    imagePath: imagePaths[index],
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(255, 246, 241, 1),
                    Color.fromRGBO(253, 229, 227, 1)
                  ]),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find Events That You Need',
                        style: TextStyle(
                            fontFamily: 'Pally',
                            fontSize: 26.68,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Discover events actively looking for your services.\nSecure tickets and get involved in opportunities that\nmatch your expertise.',
                        style: TextStyle(
                          fontFamily: 'Pally',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Column(
                          //children: [SizedBox(), SizedBox()],
                          )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
