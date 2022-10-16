//Hospital Login Page
import 'package:flutter/material.dart';
import 'package:x_code_environment/pages/Home.dart';
import 'package:x_code_environment/pages/report.dart';
import '../services/constants.dart' as c;

class loginHosp extends StatefulWidget {
  const loginHosp({Key? key}) : super(key: key);

  @override
  _loginHospState createState() => _loginHospState();
}

class _loginHospState extends State<loginHosp> {
  String username="";
  String pw="";
  Future<void> navigateToPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Report()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('Login', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)),
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
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      username=val;
                    });
                  },
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Username', enabledBorder: OutlineInputBorder(
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

                  if(c.emailS.indexOf(username) >=0 && c.passwordS.indexOf(pw) >=0)
                  {
                    c.curr= c.emailS.indexOf(username);
                    navigateToPage(context);
                  }

                });
              }, child: Text('Submit', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                )
              ),
            ],
          ),
        ),
      ),
    );

  }
}