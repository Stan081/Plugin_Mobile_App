import 'package:flutter/material.dart';

formTextFields(labelText, hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(labelText),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 44,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
      ),
    ],
  );
}

termsAndPrivacy() {
  const double fontSize = 14;
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            //maxLines: 1,
            text: const TextSpan(
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
                      color: Color.fromRGBO(188, 23, 35, 1)),
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
                      color: Color.fromRGBO(188, 23, 35, 1),
                      fontSize: fontSize),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
