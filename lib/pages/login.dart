import 'package:flutter/material.dart';
import '../services/constants.dart' as c;

import 'Home.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  loginPageState createState() => loginPageState();
}

class loginPageState extends State<loginPage> {
  String username="";
  String pw="";
  Future<void> navigateToPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Login', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)),
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
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      username=val;
                    });
                  },
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Email id', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      pw=val;
                    });
                  },
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Password', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){
                setState(() {

                  if(c.emailC.indexOf(username) >=0 && c.passwordC.indexOf(pw) >=0)
                  {
                    c.curr= c.emailC.indexOf(username);
                    navigateToPage(context);
                  }

                });
              }, child: Text('Submit', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)), style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo.shade600),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.amber.shade700),
                )),
              ),)
            ],
          ),
        ),
      ),
    );

  }
}