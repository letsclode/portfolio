import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/global/data.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../Model/Method.dart';
import '../Widget/AppBarTitle.dart';
import '../Widget/CustomText.dart';
import '../Widget/MainTiitle.dart';
import 'About.dart';
import 'FeatureProject.dart';
import 'Work.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('setState is called');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({int? index, Widget? child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index!,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xff0A192F),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //Mavigation Bar
              SizedBox(
                height: size.height * 0.14,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset("images/logo.png"),
                      const Spacer(),
                      Expanded(
                        flex: 3,
                        child: DefaultTabController(
                          length: 4,
                          child: TabBar(
                            indicatorColor:
                                const Color.fromARGB(0, 243, 235, 235),
                            onTap: (index) async {
                              _scrollToIndex(index);
                            },
                            tabs: const [
                              Tab(
                                child: AppBarTitle(
                                  text: 'About',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Experience',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Project',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Contact Us',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Card(
                          elevation: 4.0,
                          color: const Color(0xff64FFDA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(0.85),
                            height: size.height * 0.07,
                            width: size.height * 0.20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xff0A192F),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                method.launchMyURL(
                                    "https://docs.google.com/document/d/1QQmwTcfu5YFUV_4_5nrwBBmpRJS7E-zK/edit?usp=sharing&ouid=115541674412941090557&rtpof=true&sd=true");
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "Resume",
                                  style: TextStyle(
                                    color: Color(0xff64FFDA),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  //Social Icon
                  SizedBox(
                    width: size.width * 0.09,
                    height: size.height - 82,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.github),
                            color: const Color(0xffffa8b2d1),
                            iconSize: 16.0,
                            onPressed: () {
                              method
                                  .launchMyURL("https://github.com/letsclode");
                            }),
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.linkedin),
                            color: const Color(0xffffa8b2d1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchMyURL(
                                  "https://www.linkedin.com/in/cloderaldo-pampanga-2098a4162/");
                            }),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.stackOverflow),
                          color: const Color(0xffffa8b2d1),
                          onPressed: () {
                            method.launchMyURL(
                                "https://stackoverflow.com/users/5813279/clode-morales-pampanga-iii");
                          },
                          iconSize: 16.0,
                        ),
                        IconButton(
                            icon: const Icon(Icons.call),
                            color: const Color(0xffffa8b2d1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchCaller();
                            }),
                        IconButton(
                            icon: const Icon(Icons.mail),
                            color: const Color(0xffffa8b2d1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchEmail();
                            }),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: size.height * 0.20,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: size.height - 82,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          controller: _autoScrollController,
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * .06,
                                  ),
                                  CustomText(
                                    text: aka,
                                    textsize: 16.0,
                                    color: const Color(0xff41FBDA),
                                    letterSpacing: 3.0,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  CustomText(
                                    text: name,
                                    textsize: 68.0,
                                    color: const Color(0xffCCD6F6),
                                    fontWeight: FontWeight.w900,
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  CustomText(
                                    text: position,
                                    textsize: 56.0,
                                    color: const Color(0xffCCD6F6)
                                        .withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    height: size.height * .04,
                                  ),
                                  Wrap(
                                    children: const [
                                      Text(
                                        "Specializing in \nbuilding applications, \nwebsites, and everything in between.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.0,
                                          letterSpacing: 2.75,
                                          wordSpacing: 0.75,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * .12,
                                  ),

                                  //get in tuch text
                                  InkWell(
                                    onTap: () {
                                      method.launchEmail();
                                    },
                                    hoverColor: const Color(0xff64FFDA)
                                        .withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(4.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: size.height * 0.09,
                                      width: size.width * 0.14,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xff64FFDA),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
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

                                  SizedBox(
                                    height: size.height * 0.20,
                                  ),
                                ],
                              ),

                              //About Me
                              _wrapScrollTag(
                                index: 0,
                                child: const About(),
                              ),

                              //Where I've Worked
                              _wrapScrollTag(index: 1, child: Work()),

                              //Some Things I've Built Main Project
                              _wrapScrollTag(
                                  index: 2,
                                  child: Column(
                                    children: [
                                      const MainTiitle(
                                        number: "0.3",
                                        text: "Some Things I've Built",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.04,
                                      ),
                                      FeatureProject(
                                        imagePath: "images/pic9.png",
                                        ontab: () {
                                          method.launchMyURL(
                                              "https://play.google.com/store/apps/details?id=com.ohm.myassistantv2&hl=en&gl=US");
                                        },
                                        projectDesc:
                                            "A Mobile app for both Android and IOS. Allow user to manage thier expences. The purpose of this projcet is to Learn Flutter UI Design.",
                                        projectTitle: "Budgeting App",
                                        tech1: "Flutter",
                                        tech2: "Dart",
                                        tech3: "Flutter UI",
                                      ),
                                      FeatureProject(
                                        imagePath: "images/pic2.png",
                                        ontab: () {
                                          method.launchMyURL(
                                              "https://play.google.com/store/apps/details?id=com.grauffel.eg_czacademy");
                                        },
                                        projectDesc:
                                            "A booking app for shooting range in france",
                                        projectTitle: "Booking App",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Firebase",
                                      ),
                                    ],
                                  )),

                              const SizedBox(
                                height: 6.0,
                              ),

                              //Get In Touch
                              _wrapScrollTag(
                                index: 3,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.height * 0.68,
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      // color: Colors.orange,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                connect,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  letterSpacing: 0.75,
                                                  fontSize: 17.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 32.0,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              method.launchEmail();
                                            },
                                            child: Card(
                                              elevation: 4.0,
                                              color: const Color(0xff64FFDA),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.all(0.85),
                                                height: size.height * 0.09,
                                                width: size.width * 0.10,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff0A192F),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
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
                                          ),
                                        ],
                                      ),
                                    ),

                                    //Footer
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              6,
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      //color: Colors.white,
                                      child: Text(
                                        "Credit to Tushar Nikam for open source porfolio",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.4),
                                          letterSpacing: 1.75,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height - 82,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            "cloderaldo@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
