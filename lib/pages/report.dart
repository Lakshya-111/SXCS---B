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
                      backgroundColor: Colors.white,
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(c.location[index],style: TextStyle(color: Colors.black)),
                          Text(c.image[index],style: TextStyle(color: Colors.black)),
                          Text(c.description[index],style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  );
                },
                title: Text(c.description[index]),
                subtitle: Text(c.image[index] + "  -  " + c.location[index]),
              ),
            );
          }
      ),
    );
  }
}
