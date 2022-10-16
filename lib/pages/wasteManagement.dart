import 'package:flutter/material.dart';

import '../services/NavBar.dart';

class WasteManagement extends StatefulWidget {
  const WasteManagement({Key? key}) : super(key: key);

  @override
  State<WasteManagement> createState() => _WasteManagementState();
}

class _WasteManagementState extends State<WasteManagement> {
  List Ways = [
    Preserve(preservation: " ", line: " "),
    Preserve(preservation: " ", line: " "),
    Preserve(preservation: " ", line: " "),
    Preserve(preservation: " ", line: " "),
    Preserve(preservation: " ", line: " "),
    Preserve(preservation: " ", line: " "),
    Preserve(preservation: " ", line: " "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text('Waste Management',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img_4.png"), fit: BoxFit.cover),
        ),
        child: Scrollbar(
          child: ListView(
            children: [
              for (Preserve e in Ways)
                Column(
                  children: [
                    SizedBox(height: 0.02 * MediaQuery.of(context).size.height),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                      Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
                      child: Text("",

                        textAlign: TextAlign.center,
                        style : TextStyle(
                          fontFamily: "Xavier3",
                          color: Colors.black,
                          fontSize: 0.025 * MediaQuery.of(context).size.height,
                        ),

                      ),

                    ),
      ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Preserve{
  final String preservation;
  final String line;

  Preserve({
    required this.preservation,
    required this.line,
  });
}