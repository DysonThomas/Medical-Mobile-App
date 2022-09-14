import 'package:flutter/material.dart';

class Mysearch extends StatelessWidget {
  const Mysearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.transparent)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.transparent)),
              filled: true,
              fillColor: Color.fromARGB(255, 223, 244, 255),
              hintText: 'How we can help you ?',
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
