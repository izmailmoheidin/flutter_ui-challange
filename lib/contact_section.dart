import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContectSection extends StatelessWidget {
  String name;
  String contact;
  String image;
  bool isActive = false;

  ContectSection(
      {required this.contact,
      required this.image,
      required this.name,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color:
              isActive ? Color.fromARGB(221, 49, 48, 48) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(contact,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
