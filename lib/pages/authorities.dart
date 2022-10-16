//Sign In/Up Page for hospital
import 'package:flutter/material.dart';
import 'package:x_code_environment/pages/Home.dart';
import '../pages/registration.dart';
import 'login_authorities.dart';

class Authorities extends StatefulWidget {
  const Authorities({Key? key}) : super(key: key);

  @override
  _Authorities createState() => _Authorities();
}

class _Authorities extends State<Authorities> {
  Future<void> navigateToRegisterShop(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  Future<void> navigateToLoginShop(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginHosp()));
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
                      navigateToLoginShop(context);
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
                    navigateToRegisterShop(context);
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
//Sign In/Up Page for citizen