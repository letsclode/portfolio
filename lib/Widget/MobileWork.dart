import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widget/MobileWorkBox.dart';

class MobileWork extends StatefulWidget {
  const MobileWork({Key? key}) : super(key: key);

  @override
  State<MobileWork> createState() => _MobileWorkState();
}

class _MobileWorkState extends State<MobileWork> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.07,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                  height: size.height / 1.5,
                  //color: Colors.indigo,
                  child: Stack(
                    children: [
                      const Center(
                        child: VerticalDivider(
                          color: Color(0xff64FFDA),
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            child: FaIcon(FontAwesomeIcons.code,
                                color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                            child: FaIcon(FontAwesomeIcons.php,
                                color: Colors.white),
                          ),
                        ],
                      ))
                    ],
                  )),
            ),
            Expanded(
                flex: 4,
                child: SizedBox(
                  height: size.height / 1.5,
                  child: const MobileWorkBox(),
                ))
          ],
        )
      ],
    );
  }
}
