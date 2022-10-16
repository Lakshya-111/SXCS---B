import 'package:flutter/material.dart';
import '../services/constants_report.dart' as c;

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('REPORT'),
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: c.location.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      scrollable: true,
                      backgroundColor: Color.fromARGB(255, 3, 12, 34),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(c.location[index],style: TextStyle(color: Colors.white)),
                          Text(c.image[index],style: TextStyle(color: Colors.white)),
                          Text(c.description[index],style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  );
                },
                title: Text(c.description[index]),
                subtitle: Text(c.location[index]),
              ),
            );
          }
      ),
    );
  }
}
