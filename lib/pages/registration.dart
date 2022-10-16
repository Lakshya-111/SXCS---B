//Citizen Registration Page
import 'package:x_code_environment/services/solution.dart';

import '../pages/login.dart';
import 'package:flutter/material.dart';
import '../services/constants.dart' as c;

class registerC extends StatefulWidget {
  const registerC({Key? key}) : super(key: key);

  @override
  _registerCState createState() => _registerCState();
}

class _registerCState extends State<registerC> {
  String name = "";
  String email = "";
  String phoneNo = "";
  String password = "";
  String address = "";

  Future<void> navigateToPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Solution(des: "hello", location: "world", image: 'hi',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Register',
            style: TextStyle(
                fontSize: 20, fontFamily: "batman", color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              SizedBox(
                width: 0.5 * MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 0.5 * MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 0.5 * MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      phoneNo = val;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Phone number',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 0.5 * MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      address = val;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Address',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 0.5 * MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    c.nameC.add(name);
                    c.addressC.add(address);
                    c.phoneC.add(phoneNo);
                    c.emailC.add(email);
                    c.passwordC.add(password);
                    c.latitudesC.add(0.0);
                    c.longitudesC.add(0.0);
                    c.cntC = c.cntC + 1;
                    navigateToPage(context);
                  });
                },
                child: Text('Submit',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "batman",
                        color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
