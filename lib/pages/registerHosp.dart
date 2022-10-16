
import 'package:flutter/material.dart';
import 'package:x_code_environment/pages/report.dart';
import '../services/constants.dart' as c;
import 'login_authorities.dart';

class registerHosp extends StatefulWidget {
  const registerHosp({Key? key}) : super(key: key);

  @override
  _registerHospState createState() => _registerHospState();
}

class _registerHospState extends State<registerHosp> {
  String hospName="";
  String category="";
  String email="";
  String phoneNo="";
  String password="";
  String address="";
  double latitude= 0.0;
  double longitude= 0.0;
  String Gid = "";
  Future<void> navigateToPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => loginHosp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, automaticallyImplyLeading: true,
        title: Text('Register', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)),
        backgroundColor: Colors.blue,

      ),
      body: SingleChildScrollView(
        child: Container(
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
                        hospName=val;
                      });
                    },
                    decoration:
                    InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Service Name',  enabledBorder: OutlineInputBorder(
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
                        category=val;
                      });
                    },
                    decoration:
                    InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Category[FOREST/WASTE/WATER]', enabledBorder: OutlineInputBorder(
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
                        email=val;
                      });
                    },
                    decoration:
                    InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Email', enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.indigo.shade700, width: 2.0),
                      ),),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                  child: TextFormField(
                    onChanged: (val){
                      setState(() {
                        phoneNo=val;
                      });
                    },
                    decoration:
                    InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Phone number', enabledBorder: OutlineInputBorder(
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
                        address=val;
                      });
                    },
                    decoration:
                    InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Address', enabledBorder: OutlineInputBorder(
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
                        latitude=double.parse(val);
                      });
                    },
                    decoration:
                    InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Latitude', enabledBorder: OutlineInputBorder(
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
                        longitude=double.parse(val);
                      });
                    },
                    decoration:
                    InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Longitude', enabledBorder: OutlineInputBorder(
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
                        password=val;
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
                SizedBox(height: 15),
                ElevatedButton(onPressed: (){
                  setState(() {
                  c.IdS.add(Gid);
                  c.SOS.add(hospName);
                  c.nameS.add(hospName);
                  c.addressS.add(address);
                  c.phoneS.add(phoneNo);
                  c.emailS.add(email);
                  c.passwordS.add(password);
                  c.latitudeS.add(latitude);
                  c.longitudeS.add(longitude);
                  c.categoryS.add(category);
                  c.cntS+= 1;
                  navigateToPage(context);

                  });
                }, child: Text('Submit', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
