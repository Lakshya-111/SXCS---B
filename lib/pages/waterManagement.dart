import 'package:flutter/material.dart';

import '../services/NavBar.dart';

class WaterManagement extends StatefulWidget {
  const WaterManagement({Key? key}) : super(key: key);

  @override
  State<WaterManagement> createState() => _WaterManagementState();
}

class _WaterManagementState extends State<WaterManagement> {
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
        title: Text('WaterManagement'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img_5.png"), fit: BoxFit.cover),
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
                            child: Text("""Diseases: In humans, drinking or consuming polluted water in any way has many disastrous effects on our health. It causes typhoid, cholera, hepatitis and various other diseases.

Eradication of Ecosystem: Ecosystem is extremely dynamic and responds to even small changes in the environment. Increasing water pollution can cause an entire ecosystem to collapse if left unchecked.

Eutrophication: Chemicals accumulation and infusion in a water body, encourages the growth of algae. The algae form a layer on top of the pond or lake. Bacteria feed on this algae and this event decreases the amount of oxygen in the water body, severely affecting the aquatic life there

Effects of the food chain: Turmoil in food chain happens when the aquatic animals (fish, prawns, seahorse, etc) consume the toxins and pollutants in the water,  and then the humans consume them.

Prevention of Water Pollution
The best way to prevent large-scale water pollution is to try and reduce its harmful effects. There are numerous small changes we can make to protect ourselves from a future where water is scarce.

Conserve Water: Conserving water should be our first aim. Water wastage is a major problem globally and we are only now waking up to the issue. Simple small changes made domestically will make a huge difference.

Treatment of sewage: Treating waste products before disposing of it in water bodies helps reduce water pollution on a large scale. Agriculture or other industries can reuse this wastewater by reducing its toxic contents.

Use of environment-friendly products: By using soluble products that do not go on to become pollutants, we can reduce the amount of water pollution caused by a household.

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
