import 'package:flutter/material.dart';
import 'package:hotel_search/FadeAnimation.dart';
import 'package:hotel_search/home_page.dart';
import './Screens/Login/login_screen.dart';
import 'package:hotel_search/main.dart';
import 'package:overlay_screen/overlay_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:hotel_search/Screens/Signup/signup_screen.dart';



import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';


import 'package:page_transition/page_transition.dart';

class StarterPage extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> with TickerProviderStateMixin{
  AnimationController _animationController;
  Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {


    
         WidgetsBinding.instance.addPostFrameCallback((_) => OverlayScreen().show(
          context,
          identifier: 'custom2',
        ));

    Future.delayed(Duration(milliseconds: 8000)).then((v) {
      OverlayScreen().pop();
    });
 

 
          
  
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    
  }

  @override
  Widget build(BuildContext context) {
     OverlayScreen().saveScreens({
      'custom2': CustomOverlayScreen(
        backgroundColor: Colors.white,
        content: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                ShowUpAnimation(
                  delayStart: Duration(seconds: 0),
                  animationDuration: Duration(seconds: 3),
                  direction: Direction.vertical,
                  offset: 1,
                  child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 80,
                      child: Image.asset(
                        "assets/images/brand.png",
                        width: 0,
                        height: 0,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                ShowUpAnimation(
                    delayStart: Duration(seconds: 2),
                    animationDuration: Duration(seconds: 2),
                    direction: Direction.vertical,
                    offset: 0.2,
                    child: Container(
                        child: Text("Home of Hospitality",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                            ))))
              ])),
        ),
      
     'custom3': CustomOverlayScreen(
        backgroundColor: Colors.white,
        content:  Container(



              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
               



                      Container(

                        child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                       Container(
                         width:300,height: 200, color:Colors.white
                     



                       )



                  ])                



                      )

                        














              ])),
        ),
      });
    return Scaffold(
      body:  Consumer<MyModel>(
                          builder: (context, myModel, children) {

                          
                          return Stack(
        
        children: <Widget>[  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.jpg'), 
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                        
        
                 
               /* ShowUpAnimation(
                  delayStart: Duration(seconds: 7),
                  animationDuration: Duration(seconds: 2),
                  direction: Direction.vertical,
                  offset: 0.5,
                  child:Container( 
            
     
                  width: MediaQuery.of(context).size.width,height: 100, 
                child:FadeAnimation(.5, Image.asset(
              "assets/images/brand.png", 
              width: 0,
              height:0,  
              fit: BoxFit.contain)),)),
                
                SizedBox(height:MediaQuery.of(context).size.height*25/100
                ,),
                */
                   
                ShowUpAnimation(
                  delayStart: Duration(seconds: 7),
                  animationDuration: Duration(seconds: 2),
                  direction: Direction.vertical,
                  offset: 2,
                  child: Container( 
               
                  width: MediaQuery.of(context).size.width,
                child:FadeAnimation(.5, Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)),)), 
                SizedBox(height: 20,),

                
                ShowUpAnimation(
                  delayStart: Duration(seconds: 7),
                  animationDuration: Duration(seconds: 2),
                  direction: Direction.vertical,
                  offset: 2,
                  child: Container(
              
                   width: MediaQuery.of(context).size.width,
                child: FadeAnimation(1, Text("To Sunbird Hotels and Resorts,\nMalawis Leading Hotel & Resort Chain", style: TextStyle(color: Colors.white, height: 1.4, fontSize: 20),)),)),
                SizedBox(height: 50,) ,
                
                
              
           
                          
                        Row(
                    children: <Widget>[
                
                  
               
               
                   
                ShowUpAnimation(
                  delayStart: Duration(seconds: 7),
                  animationDuration: Duration(seconds: 2),
                  direction: Direction.vertical,
                  offset: 2,
                  child:Container( 

                    width: MediaQuery.of(context).size.width/2 - 20 - 5,
                    decoration: BoxDecoration(
                      
                      color: Colors.white
                    ),
                    child: AnimatedOpacity(
                      opacity: _textVisible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 50),
                      child: MaterialButton(
                            onPressed: () {

                                         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()));
              
                            
                              

                        },
                        minWidth: double.infinity,
                        child: Text("LOG IN", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w800),),
                      ),
                    )
                  )),
                


                SizedBox(width: 10,),

                 
                ShowUpAnimation(
                  delayStart: Duration(seconds: 7),
                  animationDuration: Duration(seconds: 2),
                  direction: Direction.vertical,
                  offset: 2,
                  child:Container(

                     width: MediaQuery.of(context).size.width/2 - 20 - 5,
                    decoration: BoxDecoration(
                      
                      color: Color(0xff008d4b)
                    ),
                    child: AnimatedOpacity(
                      opacity: _textVisible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 50),
                      child: MaterialButton(
                        onPressed: () {

                       
                           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()));
              

                        },
                        minWidth: double.infinity,
                        child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w800),),
                      ),
                    )
                  )),
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                ]),










                SizedBox(height: 30,),
                  
                ShowUpAnimation(
                  delayStart: Duration(seconds: 7),
                  animationDuration: Duration(seconds: 2),
                  direction: Direction.vertical,
                  offset: 2,
                  child: Align(
                    child: Text("", style: TextStyle(color: Colors.white70, fontSize: 15),),   
                  )),
                
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
      
       Positioned(
            top: 30,
            left: 0, 
            child: Image.asset(
              "assets/images/signup_top.png",
              width: MediaQuery.of(context).size.width * 25/100, 
            )
            
            
            ),
          Positioned(
            top: 35,
            left: 5, 
            child:  ShowUpAnimation(
                  delayStart: Duration(seconds: 7),
                  animationDuration: Duration(seconds: 2),
                  direction: Direction.vertical,
                  offset: 1,
                  child:  Image.asset(
              "assets/images/logo.png",
              width: MediaQuery.of(context).size.width * 17/100 , 
            )
            
            
           ))
      
      
      
      ]);
    }));
  }
}