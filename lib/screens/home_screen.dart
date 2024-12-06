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
  List<List<String>> sliderText = [
    [
      'Find Events That You Need',
      'Discover events actively looking for your services.\nSecure tickets and get involved in opportunities that\nmatch your expertise.',
    ],
    [
      'Track Your Next Moves',
      'Stay ahead eith a clear view of upcoming events, ticket details, \nand deadlines--all in one place.'
    ],
    [
      'Managing Your Earnings Seamlessly',
      'Keep tabs on your wallet balance, tracking earnings from events, and enjoy hassle-free transactions on the go.'
    ],
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
              height: MediaQuery.of(context).size.height / 1.43,
              child: PageView.builder(
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return OnboardingImageSlider(
                    imagePath: imagePaths[index],
                    sliderText: sliderText[index],
                    noOfImages: imagePaths.length,
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
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("data"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("data"),
                      ),
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
