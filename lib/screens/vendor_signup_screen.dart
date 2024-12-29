import 'package:flutter/material.dart';
import 'package:plugin_app/components/onboarding.dart';
import 'package:plugin_app/screens/vendor_create_profile_screen.dart';
import 'package:plugin_app/widgets/elevated_gradient_button.dart';
import 'package:plugin_app/widgets/onboarding_base_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return OnboardingBaseWidget(
      body: Container(
        color: const Color.fromRGBO(188, 23, 35, 1),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.7,
              child: Image.asset('assets/icons/signup_icon.png'),
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
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Image.asset('assets/icons/truedepth.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 24.38, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'We need your email address to verify your account \nand keep your tickets safe.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          formTextFields(
                            'Email Address',
                            'Enter your email address',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const CreateVendorProfileScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    termsAndPrivacy(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
