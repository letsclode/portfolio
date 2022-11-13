import 'package:flutter/material.dart';

import 'CustomText.dart';

class MobileProject extends StatelessWidget {
  Function()? ontab;
  String? image;
  String? title;
  MobileProject({Key? key, this.ontab, this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontab,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomText(
                text: title!,
                textsize: 12.0,
                color: const Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
            ),
            Image(
              fit: BoxFit.fitWidth,
              image: AssetImage(image!),
            ),
          ],
        ),
      ),
    );
  }
}
