import 'package:flutter/material.dart';

import '../../uniqe.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key,required this.name,required this.image}):super(key: key);

  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: const Color(0xff454b58),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: const Color(0xff5c616e))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 70,
              color: Colors.white70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: kDesStyle,
            )
          ],
        ),
      ),
    );
  }
}
