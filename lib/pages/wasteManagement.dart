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
                      child: Text("""Recycling– Above all the most important method is the recycling of waste. This method does not need any resources. Therefore this is much useful in the management of waste. Recycling is the reusing of things that are scrapped of. Moreover, recycling is further converting waste into useful resources.



Landfills– Landfills is the most common method for waste management. The garbage gets buried in large pits in the ground and then covered by the layer of mud. As a result, the garbage gets decomposed inside the pits over the years. In conclusion, in this method elimination of the odor and area taken by the waste takes place.

Composting– Composting is the converting of organic waste into fertilizers. This method increases the fertility of the soil. As a result, it is helpful in more growth in plants. Furthermore it the useful conversion of waste management that is benefiting the environment.

Advantages of Waste Management
There are various advantages of waste management. Some of them are below:

Decrease bad odor– Waste produces a lot of bad odor which is harmful to the environment. Moreover, Bad odor is responsible for various diseases in children. As a result, it hampers their growth. So waste management eliminates all these problems in an efficient way.

Reduces pollution– Waste is the major cause of environmental degradation. For instance, the waste from industries and households pollute our rivers. Therefore waste management is essential. So that the environment may not get polluted. Furthermore, it increases the hygiene of the city so that people may get a better environment to live in.

Reduces the production of waste -Recycling of the products helps in reducing waste. Furthermore, it generates new products which are again useful. Moreover, recycling reduces the use of new products. So the companies will decrease their production rate.

It generates employment– The waste management system needs workers. These workers can do various jobs from collecting to the disposing of waste. Therefore it creates opportunities for the people that do not have any job. Furthermore, this will help them in contributing to society.

Produces Energy– Many waste products can be further used to produce energy. For instance, some products can generate heat by burning. Furthermore, some organic products are useful in fertilizers. Therefore it can increase the fertility of the soil.

""",

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
