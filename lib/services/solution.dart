import 'package:flutter/material.dart';
import '../pages/Home.dart';
import 'constants_report.dart' as c;
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Solution extends StatefulWidget {
  String des;
  String location;
  String image;
  Solution({Key? key, required this.des, required this.location, required this.image}) : super(key: key);

  @override
  State<Solution> createState() => _SolutionState(des: des, location: location,image: image);
}

class _SolutionState extends State<Solution> {
  String loc = '';
  String description = '';
  String des;
  String location;
  String image;
  _SolutionState({required this.location, required this.des, required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: true,
        title: Text("Report Your Problem"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(0, 255, 87, 51),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 0.03 * MediaQuery.of(context).size.height),
              SizedBox(height: 0.3 * MediaQuery.of(context).size.height,),
          Text(
            "UPLOAD IMAGE OR VIDEO IN FORM OF GOOGLE DRIVE",
            style: TextStyle(
                color: Colors.black, fontFamily: 'Xavier1'),
          ),
              SizedBox(
                  width: 0.6 * MediaQuery.of(context).size.width,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Google Drive Link",
                      hintStyle: TextStyle(
                          color: Colors.white, fontFamily: 'Xavier3'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, width: 2.0),
                      ),
                      fillColor: Color.fromARGB(255, 3, 12, 34),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 12, 34),
                            width: 2.0),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        image = value;
                      });
                    },
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'Xavier3'),
                  )),


              SizedBox(
                  width: 0.6 * MediaQuery.of(context).size.width,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Your Location",
                      hintStyle: TextStyle(
                          color: Colors.white, fontFamily: 'Xavier3'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, width: 2.0),
                      ),
                      fillColor: Color.fromARGB(255, 3, 12, 34),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 12, 34),
                            width: 2.0),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        location = value;
                      });
                    },
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'Xavier3'),
                  )),
              SizedBox(
                  height: 0.05 * MediaQuery.of(context).size.height),
              SizedBox(
                  width: 0.6 * MediaQuery.of(context).size.width,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Description Box",
                      hintStyle: TextStyle(
                          color: Colors.white, fontFamily: 'Xavier3'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, width: 2.0),
                      ),
                      fillColor: Color.fromARGB(255, 3, 12, 34),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 12, 34),
                            width: 2.0),
                      ),
                    ),
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'Xavier3'),
                    onChanged: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                  )),
              SizedBox(
                  height: 0.05 * MediaQuery.of(context).size.height),
              SizedBox(
                width: 0.25 * MediaQuery.of(context).size.width,
                height: 0.05 * MediaQuery.of(context).size.height,
                child: ElevatedButton(
                    onPressed: () {
                      c.location.insert(0, this.location);
                      c.description.insert(0, this.description);
                      c.image.insert(0, this.image);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          0.0375 * MediaQuery.of(context).size.width,),
                      ),
                      fixedSize: Size(
                        0.9 * MediaQuery.of(context
                        ).size.width,
                        .055 * MediaQuery.of(context).size.height,
                      ),
                    ),
                    child: const Text(
                      "SUBMIT",
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Xavier3'),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}