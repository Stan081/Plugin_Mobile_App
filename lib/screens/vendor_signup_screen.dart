import 'package:flutter/material.dart';
import 'package:plugin_app/widgets/elevated_gradient_button.dart';
import 'package:plugin_app/widgets/onboarding_base_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final double fontSize = 14;
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
              child: Image.asset('assets/images/signup_icon.png'),
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
                    top: Radius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 24.38, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'We need your email address to verify your account \nand keep your tickets safe.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text('Email Address'),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your email address',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "Continue",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 40, horizontal: 20),
                            child: RichText(
                              textAlign: TextAlign.center,
                              //maxLines: 1,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'By registering, you accept our ',
                                    style: TextStyle(
                                        fontFamily: 'Pally',
                                        color: Colors.grey,
                                        fontSize: fontSize),
                                  ),
                                  TextSpan(
                                    text: 'Terms of Use ',
                                    style: TextStyle(
                                        fontFamily: 'Pally',
                                        fontWeight: FontWeight.bold,
                                        fontSize: fontSize,
                                        color: const Color.fromRGBO(
                                            188, 23, 35, 1)),
                                  ),
                                  TextSpan(
                                    text: 'and ',
                                    style: TextStyle(
                                        fontFamily: 'Pally',
                                        color: Colors.grey,
                                        fontSize: fontSize),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Pally',
                                        color: const Color.fromRGBO(
                                            188, 23, 35, 1),
                                        fontSize: fontSize),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
