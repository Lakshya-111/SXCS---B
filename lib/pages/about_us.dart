import 'package:flutter/material.dart';

import '../services/NavBar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: NavBar(),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Text("ABOUT US",style: TextStyle(
              color: Colors.black,
            ),),centerTitle: true,),
          body: Container(
            child: Column(children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 0.35 * MediaQuery.of(context).size.height,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
                            child: Text(" We, the Better your environment team, believe that nothing is impossible when we work together. We wish to find innovative solutions to today's problems. We do this by creating software that helps create an impact through crowd sourcing. We present to you Better your environment, an application that you can easily download on your devices and report any environmental damage in your vicinity to the respective authorities through our service. ",

                              textAlign: TextAlign.center,
                              style : TextStyle(
                                fontFamily: "Xavier3",
                                color: Colors.black,
                                fontSize: 0.025 * MediaQuery.of(context).size.height,
                              ),

                            ),

                          ),
                          const Divider(
                            color: Colors.white,
                            indent: 0,
                            endIndent: 0,
                            height: 70,
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.05 * MediaQuery.of(context).size.height,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        );
  }
}
