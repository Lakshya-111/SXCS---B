//Citizen Or Emergency Services Page
import 'package:flutter/material.dart';
import 'package:x_code_environment/pages/login.dart';
import 'package:x_code_environment/pages/login_authorities.dart';
import 'package:x_code_environment/pages/public.dart';
import 'package:x_code_environment/pages/registerHosp.dart';
import 'package:x_code_environment/pages/registration.dart';

import 'pages/authorities.dart';

class askStatus extends StatefulWidget {
  const askStatus({Key? key}) : super(key: key);

  @override
  _askStatus createState() => _askStatus();
}

class _askStatus extends State<askStatus> {
  Future<void> navigateToLorRShop(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => registerHosp()));
  }

  Future<void> navigateToLorRCustomer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => registerC()));
  }

  Future<void> navigateToLogin(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginHosp()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img_2.png"), fit: BoxFit.cover),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            SizedBox(height: 1 * MediaQuery.of(context).size.height),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 0.0),
              child: ElevatedButton(
                  onPressed: () {
                    navigateToLorRCustomer(context);
                  },
                  child: Text(
                    'Public',
                    style: TextStyle(
                        fontSize: 20, fontFamily: "batman", color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(3, 12, 34, 0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          0.05 * MediaQuery.of(context).size.width),
                    ),
                    fixedSize: Size(
                      0.3625 * MediaQuery.of(context).size.width,
                      .0825 * MediaQuery.of(context).size.height,
                    ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 0.0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      scrollable: true,
                      backgroundColor: Color.fromARGB(255, 3, 12, 34),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              navigateToLogin(context);
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "batman", color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(3, 12, 34, 0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0.05 * MediaQuery.of(context).size.width),
                              ),
                              fixedSize: Size(
                                0.3625 * MediaQuery.of(context).size.width,
                                .0825 * MediaQuery.of(context).size.height,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              navigateToLorRShop(context);
                            },
                            child: Text(
                              'REGISTER',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "batman", color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(3, 12, 34, 0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0.05 * MediaQuery.of(context).size.width),
                              ),
                              fixedSize: Size(
                                0.3625 * MediaQuery.of(context).size.width,
                                .0825 * MediaQuery.of(context).size.height,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  'Authorities',
                  style: TextStyle(
                      fontSize: 20, fontFamily: "batman", color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(3, 12, 34, 0.5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
              0.05 * MediaQuery.of(context).size.width),
          ),
          fixedSize: Size(
              0.3625 * MediaQuery.of(context).size.width,
              .0825 * MediaQuery.of(context).size.height,
          ),
        ),
              ),
            )
          ]),
        ));
  }
}
