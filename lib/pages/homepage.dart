import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doc_finder/Component/FirstBanner.dart';
import 'package:doc_finder/Component/category.dart';
import 'package:doc_finder/Component/categorylist.dart';
import 'package:doc_finder/Component/doctorcard.dart';
import 'package:doc_finder/Component/search.dart';
import 'package:doc_finder/Component/topBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 223, 244, 255),
          index: 0,
          height: 60.0,
          items: [
            Icon(Icons.home),
            Icon(
              Icons.chat_bubble_outline_outlined,
            ),
            Icon(
              Icons.notifications_outlined,
            ),
            Icon(
              Icons.calendar_month_outlined,
            ),
          ]),
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            MyBanner(),
            Mysearch(),
            MyList(),
            // SizedBox(
            //   height: 20,
            // ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style:
                        GoogleFonts.roboto(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    'See all',
                    style:
                        GoogleFonts.roboto(fontSize: 15, color: Colors.black45),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Doctorcard(
                  department: 'Demetologist',
                  docname: 'Dr. Pete Reji',
                  imgpath: 'lib/Images/doc_1.jpg',
                  rating: '4.8',
                  year: '7',
                ),
                Doctorcard(
                  department: 'Surgeon',
                  docname: 'Dr. Pradeep Gupta',
                  imgpath: 'lib/Images/doc_4.jpg',
                  rating: '3.0',
                  year: '5',
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
