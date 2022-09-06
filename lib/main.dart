import 'package:design_challange/recently_section.dart';
import 'package:flutter/material.dart';

import 'contact_section.dart';

void main() {
  runApp(const DesignApp());
}

class DesignApp extends StatefulWidget {
  const DesignApp({Key? key}) : super(key: key);

  @override
  State<DesignApp> createState() => _DesignAppState();
}

class _DesignAppState extends State<DesignApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heaser section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(221, 49, 48, 48),
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      Text(
                        "Send",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //recently section
                  Text(
                    "rescently",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        recently_section(
                          name: "osman",
                          image: "images/osman.jpeg",
                          contact: "+252 61 5..",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        recently_section(
                          name: "rakia",
                          image: "images/rakia.jpg",
                          contact: "+252 61..",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        recently_section(
                          name: "lulu",
                          image: "images/lulu.jpg",
                          contact: "+252 61..",
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        recently_section(
                          name: "ahmed",
                          image: "images/ahmed.jpg",
                          contact: "+252 61..",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        recently_section(
                          name: "adnan",
                          image: "images/adnan.webp",
                          contact: "+252 61..",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        recently_section(
                          name: "yusufey",
                          image: "images/yusufey.webp",
                          contact: "+252 61..",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "contacts",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //contacts section
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        ContectSection(
                          isActive: false,
                          name: "hem mehmet",
                          image: "images/hem.webp",
                          contact: "+252 61 8778751",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ContectSection(
                          isActive: false,
                          name: "iqra aida",
                          image: "images/iqra.jpg",
                          contact: "+252 61 70027671",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ContectSection(
                          isActive: false,
                          name: "mehmet O. wehliye",
                          image: "images/wehliye.jpg",
                          contact: "+252 61 6821682",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ContectSection(
                          isActive: true,
                          name: "nara burhan",
                          image: "images/nasro.webp",
                          contact: "+252 61 3707358",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ContectSection(
                          isActive: false,
                          name: "lulu mehmet",
                          image: "images/lulu.jpg",
                          contact: "+252 615676545",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ContectSection(
                          isActive: false,
                          name: "adnan",
                          image: "images/adnan.webp",
                          contact: "+252 616788954",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ContectSection(
                          isActive: false,
                          name: "nara burhan",
                          image: "images/nasro.webp",
                          contact: "+252 61 3707358",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
