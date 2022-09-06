import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class recently_section extends StatelessWidget {
  String name;
  String contact;
  String image;

  recently_section(
      {required this.contact, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Color.fromARGB(221, 49, 48, 48),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  contact,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
