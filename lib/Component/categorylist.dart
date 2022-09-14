import 'package:doc_finder/Component/category.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 75,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            category(
              imgpath: 'lib/Icons/tooth(1).png',
              catogname: 'Dentist',
            ),
            category(
              imgpath: 'lib/Icons/surgery-room.png',
              catogname: 'Surgeon',
            ),
            category(
              imgpath: 'lib/Icons/microscope.png',
              catogname: 'Lab',
            ),
          ],
        ),
      ),
    );
  }
}
