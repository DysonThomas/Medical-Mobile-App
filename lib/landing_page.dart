import 'dart:ffi';

import 'package:doc_finder/Component/landingItems.dart';
import 'package:doc_finder/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController _controller = PageController();
  bool onLastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastpage = (index == 2);
                });
              },
              children: const [
                Intropage(
                  imgpath: 'lib/Images/doctor_1.png',
                  desc: ' All Specialist From One App',
                ),
                Intropage(
                  imgpath: 'lib/Images/doctor_2.png',
                  desc: 'Home Sample Collection',
                ),
                Intropage(
                  imgpath: 'lib/Images/doctor_3.png',
                  desc: 'Remote Consulatation',
                )
              ]),
          Container(
              alignment: const Alignment(0, .75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Text(
                      "Back",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      _controller.previousPage(
                          duration: Duration(microseconds: 500),
                          curve: Curves.easeIn);
                    },
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onLastpage
                      ? GestureDetector(
                          child: Text("Done",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Homepage();
                            }));
                          },
                        )
                      : GestureDetector(
                          child: Text("Next",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.bounceOut);
                          },
                        )
                ],
              ))
        ],
      ),
    );
  }
}
