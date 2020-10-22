import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hotel_search/start.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

        

    Timer
    (
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => StarterPage()))
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
      
        Container(
           width: MediaQuery.of(context).size.width - 20,height: 100, 
        child: Image.asset('assets/images/brand.png', width: 0,
              height:0,  
              fit: BoxFit.cover ),
      ), 
     

        Container(
          margin: EdgeInsets.only(top:0),
        child: SpinKitThreeBounce(
  color: Colors.grey[300],
  size: 35.0,
)
,
      ), 


    

     ])));
  }
}