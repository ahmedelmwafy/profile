import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(.8),
            ),
            clipper: GetClipper(),
          ),
          Positioned(
            width: 450,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/s960x960/73250683_508480516397700_2867151335940161536_o.jpg?_nc_cat=111&_nc_ohc=oYeiYr3O0MYAX8q1Uak&_nc_ht=scontent-hbe1-1.xx&oh=f14a24197c577d25c6201a5ad7ea6459&oe=5EDC006B'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(75),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7.0,
                          color: Colors.black,
                        )
                      ]),
                ),
                SizedBox(
                  height: 90,
                ),
                Text(
                  "Errors Developers Group",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Schyler"),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "  We are a non-profit organization ",
                  style: TextStyle(
                      fontSize: 11,
                      //fontWeight: FontWeight.bold,
                      fontFamily: "Schyler"),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 30,
                  width: 95,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7,
                    child: GestureDetector(
                      onTap: (){
                      },
                     child:Center(child:Text("Login",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Schyler"),) ,) 

                    ),
                  ),
                ),SizedBox(height: 25,),
                Container(
                  height: 30,
                  width: 95,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.greenAccent,
                    color: Colors.red,
                    elevation: 7,
                    child: GestureDetector(
                      onTap: (){
                      },
                     child:Center(child:Text("Logout",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Schyler"),) ,) 

                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0, size.height / 1.9);
    path.lineTo(size.width + 125, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
