import 'package:flutter/material.dart';

class OnboardingImageSlider extends StatelessWidget {
  final String? imagePath;
  final int? noOfImages;
  final List<String>? sliderText;
  const OnboardingImageSlider(
      {super.key, this.imagePath, this.noOfImages, this.sliderText});

  @override
  Widget build(BuildContext context) {
    int activePage = 0;
    return Column(
      children: [
        FractionalTranslation(
          translation: const Offset(0, 0.03),
          child: Image.asset(
            imagePath!,
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
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
                top: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 35,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sliderText![0],
                    style: const TextStyle(
                        fontFamily: 'Pally',
                        fontSize: 24.38,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    sliderText![1],
                    style: const TextStyle(
                      fontFamily: 'Pally',
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List<Widget>.generate(
                        noOfImages!,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: CircleAvatar(
                              radius: 5,
                              backgroundColor: activePage == index
                                  ? const Color.fromRGBO(119, 23, 22, 1)
                                  : Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
