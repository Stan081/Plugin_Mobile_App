import 'package:flutter/material.dart';
import 'package:plugin_app/screens/vendor_signup_screen.dart';
import 'package:plugin_app/widgets/elevated_gradient_button.dart';
import 'package:plugin_app/widgets/onboarding_base_widget.dart';
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
    return OnboardingBaseWidget(
      body: Container(
        color: const Color.fromRGBO(188, 23, 35, 1),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.38,
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
                      MyElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: const Text(
                          "Create Vendor Profile",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 20),
                      MyElevatedButton(
                          onPressed: () {},
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(40, 30, 23, 0.07),
                            Color.fromRGBO(40, 30, 23, 0.07)
                          ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/search.png'),
                              const SizedBox(width: 10),
                              const Text(
                                "Browse Events",
                                style: TextStyle(
                                    color: Color.fromRGBO(40, 30, 23, 1),
                                    fontSize: 20),
                              ),
                            ],
                          ))
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
