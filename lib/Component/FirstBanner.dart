import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 223, 244, 255),
            borderRadius: BorderRadius.circular(18)),
        height: 140,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'lib/Images/doctor_4.png',
                width: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text("How do you feel ?",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(
                    height: 7,
                  ),
                  Text("Fill the medical card right now",
                      style: GoogleFonts.roboto(
                          color: Colors.grey[800], fontSize: 16)),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 75.0, vertical: 15),
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 14),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 68, 75, 96),
                        borderRadius: BorderRadius.circular(18)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
