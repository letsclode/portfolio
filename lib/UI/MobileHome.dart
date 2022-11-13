import 'package:flutter/material.dart';
import 'package:portfolio/global/data.dart';
import '../Model/Method.dart';
import '../Widget/CustomText.dart';
import '../Widget/MobileProject.dart';
import '../Widget/MobileWork.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  var method = Method();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff0A192F),
      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  accountName: Text(name),
                  accountEmail: Text(email)),
              const ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("About"),
              ),
              const Expanded(
                child: Text("Version 1.0.1"),
              )
            ],
          )),
      appBar: AppBar(
        backgroundColor: const Color(0xff0A192F),
        elevation: 0.0,
        title: IconButton(
          icon: const Icon(
            Icons.change_history,
            size: 32.0,
            color: Color(0xff64FFDA),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomText(
                text: aka,
                textsize: 16.0,
                color: const Color(0xff41FBDA),
                letterSpacing: 3.0,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomText(
                text: name,
                textsize: 52.0,
                color: const Color(0xffCCD6F6),
                fontWeight: FontWeight.w900,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomText(
                text: position,
                textsize: 42.0,
                color: const Color(0xffCCD6F6).withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      about,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: const Color(0xff64FFDA),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(0.75),
                  height: 56.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xff0A192F),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      method.launchEmail();
                    },
                    hoverColor: Colors.white10,
                    child: const Text(
                      "Get In Touch",
                      style: TextStyle(
                        color: Color(0xff64FFDA),
                        letterSpacing: 2.75,
                        wordSpacing: 1.0,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),

              //About me
              FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: size.width,
                  //color: Colors.purple,
                  child: Column(
                    children: [
                      //About me title
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomText(
                            text: "01.",
                            textsize: 20.0,
                            color: Color(0xff61F9D5),
                            fontWeight: FontWeight.w700,
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          const CustomText(
                            text: "About Me",
                            textsize: 26.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Container(
                            width: size.width / 4,
                            height: 1.10,
                            color: const Color(0xff303C55),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: size.height * 0.07,
                      ),

                      //About me desc
                      Wrap(
                        children: [
                          CustomText(
                            text: about,
                            textsize: 16.0,
                            color: const Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text: about2,
                            textsize: 16.0,
                            color: const Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          const CustomText(
                            text:
                                "Here are a few technologies I've been working with recently:\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: size.height * 0.06,
                      ),

                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "Dart"),
                                technology(context, "Flutter/Android/IOS"),
                                technology(context, "Firebase"),
                                technology(context, "UI/UX (Adobe XD)"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "Python"),
                                technology(context, "HTML, & (S)Css"),
                                technology(context, "MYSQL"),
                                technology(context, "Java"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.08,
              ),

              //Image
              Center(
                child: SizedBox(
                  height: size.height * 0.6,
                  width: size.width * 0.7,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        right: 20,
                        left: 50.0,
                        child: Card(
                          color: const Color(0xff61F9D5),
                          child: Container(
                            margin: const EdgeInsets.all(2.75),
                            height: size.height * 0.45,
                            width: size.width * 0.66,
                            color: const Color(0xff0A192F),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("images/pic1.jpeg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Where I've Worked title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "02.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const CustomText(
                    text: "Where I've Worked",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.08,
                    height: 1.10,
                    color: const Color(0xff303C55),
                  ),
                ],
              ),

              const MobileWork(),

              SizedBox(
                height: size.height * 0.07,
              ),

              //Some Things I've Built title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "03.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const CustomText(
                    text: "Some Things I've Built",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: const Color(0xff303C55),
                  ),
                ],
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic9.png",
                title: "Budgeting App",
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic2.png",
                title: "Booking App",
              ),

              const SizedBox(
                height: 150,
              ),

              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  //height: size.aspectRatio,
                  width: size.width,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: "0.4 What's Next?",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const CustomText(
                        text: "Get In Touch",
                        textsize: 42.0,
                        color: Colors.white,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            connect,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.75,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      Card(
                        elevation: 4.0,
                        color: const Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(0.85),
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "Say Hello",
                              style: TextStyle(
                                color: Color(0xff64FFDA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 150,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     IconButton(
              //       icon: const Icon(
              //         FontAwesomeIcons.github,
              //         color: Colors.white,
              //         size: 15.0,
              //       ),
              //       onPressed: () {
              //         method.launchMyURL("https://github.com/champ96k");
              //       },
              //     ),
              //     IconButton(
              //       icon: const Icon(
              //         FontAwesomeIcons.linkedin,
              //         color: Colors.white,
              //         size: 15.0,
              //       ),
              //       onPressed: () {
              //         method.launchMyURL(
              //             "https://www.linkedin.com/in/tushar-nikam-a29a97131/");
              //       },
              //     ),
              //     IconButton(
              //       icon: const Icon(
              //         FontAwesomeIcons.twitter,
              //         color: Colors.white,
              //         size: 15.0,
              //       ),
              //       onPressed: () {
              //         method.launchMyURL("https://twitter.com/champ_96k");
              //       },
              //     ),
              //     IconButton(
              //       icon: const Icon(
              //         Icons.mail,
              //         color: Colors.white,
              //         size: 15.0,
              //       ),
              //       onPressed: () {
              //         method.launchEmail();
              //       },
              //     )
              //   ],
              // ),

              // SizedBox(
              //   height: size.height * 0.07,
              // ),

              // //Footer
              // Container(
              //   alignment: Alignment.center,
              //   height: MediaQuery.of(context).size.height / 6,
              //   width: MediaQuery.of(context).size.width,
              //   //color: Colors.white,
              //   child: Text(
              //     "Designed & Built by Tushar Nikam 💙 Flutter",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.white.withOpacity(0.4),
              //       letterSpacing: 1.75,
              //       fontSize: 14.0,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
