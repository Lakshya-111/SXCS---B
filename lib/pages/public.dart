import 'package:flutter/material.dart';
import '../pages/registration.dart';
import 'login.dart';

class Public extends StatefulWidget {
  const Public({Key? key}) : super(key: key);

  @override
  _Public createState() => _Public();
}

class _Public extends State<Public> {
  Future<void> navigateToRegisterCustomer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => registerC()));
  }

  Future<void> navigateToLoginCustomer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover),
          ),
          child: Center(
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(height: 0.4 * MediaQuery.of(context).size.height),
                ElevatedButton(
                    onPressed: () {
                      navigateToLoginCustomer(context);
                    },
                    child: Text('Sign In',
                        style: TextStyle(
                            fontSize: 20, fontFamily: "batman", color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.indigo.shade600),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.amber.shade700),
                      )),
                    )),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    navigateToRegisterCustomer(context);
                  },
                  child: Text('Sign Up',
                      style: TextStyle(
                          fontSize: 20, fontFamily: "batman", color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo.shade600),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.amber.shade700),
                    )),
                  ),
                )
              ])),
        ));
  }
}
