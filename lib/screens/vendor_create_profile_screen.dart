import 'package:flutter/material.dart';
import 'package:plugin_app/components/onboarding.dart';
import 'package:plugin_app/widgets/onboarding_base_widget.dart';

class CreateVendorProfileScreen extends StatefulWidget {
  const CreateVendorProfileScreen({super.key});

  @override
  State<CreateVendorProfileScreen> createState() =>
      _CreateVendorProfileScreenState();
}

class _CreateVendorProfileScreenState extends State<CreateVendorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return OnboardingBaseWidget(
      body: Container(
        color: const Color.fromRGBO(188, 23, 35, 1),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
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
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset('assets/icons/truedepth.png'),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Create Vendor Profile',
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
                        height: 20,
                      ),
                      formTextFields(
                        'First Name',
                        'Enter first name',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      formTextFields(
                        'Last Name',
                        'Enter last name',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      formTextFields(
                        'Business Name',
                        'Enter business name',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Enter phone number'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        DropdownButton(
                          items: const [DropdownMenuItem(child: Text('Hello'))],
                          onChanged: (value) {},
                        ),
                        const Expanded(
                          child: SizedBox(
                            height: 44,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '00-000-0000',
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
                termsAndPrivacy()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
