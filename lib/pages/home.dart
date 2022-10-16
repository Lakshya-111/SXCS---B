import 'package:flutter/material.dart';
import 'package:x_code_environment/pages/wasteManagement.dart';
import 'package:x_code_environment/pages/waterManagement.dart';
import 'package:x_code_environment/services/solution.dart';

import '../opening_pg.dart';
import '../services/NavBar.dart';
import 'deforestation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => askStatus()));
            },
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover),
        ),
        child: Column(children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 0.35 * MediaQuery.of(context).size.height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
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
