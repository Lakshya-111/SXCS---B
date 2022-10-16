//Alerting Algorithm
import 'package:flutter/material.dart';
import 'constants.dart' as c;
import '../pages/login.dart';
loginPageState log = new loginPageState();
Widget show(context) {
  for(int i = 0; i < c.alert.length && c.alert[i] != null; i++)
  {
        String a = c.alert[i];
        c.alert.remove(c.alert[i]);
        c.latitudeA.remove(c.latitudeA[i]);
        c.longitudeA.remove(c.longitudeA[i]);
        print(a);
        return AlertDialog(
          title: Text('NEW REPORT'),
          content: SingleChildScrollView(
            child: ListBody(
              children:  <Widget>[
                Text(a),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                log.navigateToPage(context);
              },
              child: Text('Okay'),
            ),
          ],
        );

      }

  return SizedBox(height:0.0, width: 0.0);
}
class alert extends StatefulWidget {
  const alert({Key? key}) : super(key: key);

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    Widget a = show(context);
    return a;
  }
}


