import 'package:flutter/material.dart';

class MobileProject extends StatelessWidget {
  Function()? ontab;
  String? image;
  MobileProject({
    Key? key,
    this.ontab,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontab,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage(image!),
          ),
        ),
      ),
    );
  }
}