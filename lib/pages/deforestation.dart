import 'package:flutter/material.dart';

import '../services/NavBar.dart';

class Deforestation extends StatefulWidget {
  const Deforestation({Key? key}) : super(key: key);

  @override
  State<Deforestation> createState() => _DeforestationState();
}

class _DeforestationState extends State<Deforestation> {
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
        title: Text('Deforestation'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img_1.png"), fit: BoxFit.cover),
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
                          child: Text("Forest conservation is the practice of planting and maintaining forested areas for the benefit and sustainability of future generations. The conservation of forest also stands & aims at a quick shift in the composition of trees species and age distribution. Forest conservation involves the upkeep of the natural resources within a forest that are beneficial to both humans and the environment. Forests are vital for human life because they provide a diverse range of resources: they store carbon &act as carbon sink, produce oxygen which is vital for existence of life on the earth, so they are rightly called as earth lung, help in regulating hydrological cycle, planetary climate, purify water, provide wild life habitat(50% of the earth's biodiversity occurs in forests), reduce global warming, absorb toxic gases & noise, reduce pollution, conserve soil,mitigate natural hazards such as floods& landslides & so on. But now-a-days, forest cover is depleting rapidly due to many reasons such as an expansion of agriculture, timber plantation, other land uses like pulp and paper plantations, urbanization, construction of roads, industries, constitutes the biggest and severe threat to the forest causing serious environmental damage. Thus, there is need of public awareness. This paper offers various strategies for the conservation of forest & awareness to people, which plays a vital role for maintaining a proper balance of environment. So, we must get involved in this national task.",

                            textAlign: TextAlign.center,
                            style : TextStyle(
                              fontFamily: "Xavier3",
                              color: Colors.white,
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