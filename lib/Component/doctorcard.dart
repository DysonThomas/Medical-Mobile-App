import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctorcard extends StatelessWidget {
  final String imgpath;
  final String docname;
  final String rating;
  final String department;
  final String year;
  const Doctorcard(
      {super.key,
      required this.imgpath,
      required this.docname,
      required this.rating,
      required this.department,
      required this.year});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 223, 244, 255),
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(imgpath),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[500],
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              docname,
              style:
                  GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              department + ' ,' + year + ' y.e.',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}
