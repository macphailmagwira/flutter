import 'package:flutter/material.dart';
import 'package:hotel_search/styles/texts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cupertino_setting_control/cupertino_setting_control.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hotel_search/card.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:hotel_search/scan.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:overlay_screen/overlay_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hotel_search/main.dart';
import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';






class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {
  
   String user_email;
  String user_name;
  String user_phone;

  
  void initState() {
    super.initState();
 

 setData();
    

    
 
          
    
  }
  
  
  @override

  Widget build(BuildContext context) {
     OverlayScreen().saveScreens({
           "loggingout": CustomOverlayScreen(
          backgroundColor: Colors.transparent,
          content: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width - 120,
                    height: 200,
                    color: Colors.white,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Signing Out...",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 25),

                          // HERE IS MY CONDITIONAL THAT IS NOT CHANGING TO THE SECOND ONE
                          Container(child: SpinKitWave(
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Color(0xff008d4b),
                                      ),
                                    );
                                  },
                                ))
                             
                        ]))
              ])))

     });



    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        actions: <Widget>[
 
           Container ( 
             padding: EdgeInsets.all(15),
             
             child:Text(
        " ",
        textScaleFactor: 1.5,
        style: new  TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Montserrat',
      fontSize: 10, 
      fontWeight: FontWeight.w600)),
      ),
       Container ( 
             padding: EdgeInsets.all(15),
             
             child:Text(
        "207665434678",
        textScaleFactor: 1.5,
        style: new  TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Montserrat',
      fontSize: 11,
      fontWeight: FontWeight.w600)),
      )
           ],
        elevation: 0,
        titleSpacing: 10,
        backgroundColor: Colors.white,
        title: Text('My Account' ,style: TextStyle( 
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 20,
  )),
  
       
      ),
      body: 
      
      SingleChildScrollView(

            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
       
          Container(  
            height: 450,
            decoration: BoxDecoration(
                      color: Colors.white,
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),  // changes position of shadow
      ),
    ],


            ),
            
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                     Container(

                       
                     ),




                Container(
                    margin: EdgeInsets.only(top: 35),
                  width: 300,
                  height: 130,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('img/logo2.png' ,fit: BoxFit.cover), 
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50,0, 50, 0),
                  
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                     ShowUpAnimation(direction:Direction.vertical,
  delayStart: Duration(seconds: 0),
  animationDuration: Duration(seconds: 1),
  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '0 Points'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '10,000 Points'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )),
                      ShowUpAnimation(direction:Direction.horizontal,
  delayStart: Duration(seconds: 0),
  animationDuration: Duration(seconds: 1),
  child: LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: 0.6,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor:
                            Theme.of(context).accentColor.withAlpha(30),
                        progressColor: Hexcolor('#3f3f41'),
                      )),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      ShowUpAnimation(
  delayStart: Duration(seconds: 0),
  animationDuration: Duration(seconds: 1),
  child:Text(
                        'PLATNUM MEMBER'.toUpperCase(),
                        style: TextStyle(
                          color: Hexcolor('#3f3f41'),
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
  )),
                      key: Key('Slo Mo')),SizedBox(height:5),
                      GestureDetector(
                        onTap:(){
                           

                      showPlatformDialog(
  context: context,
  builder: (_) => BasicDialogAlert(
    title: Text("MEMBER BENEFTS" , style:  TextStyle(
                          color: Hexcolor('#3f3f41'),
                          fontFamily: 'Bebas',
                          fontSize: 26,
                          fontWeight: FontWeight.w100,
  )),
    content:
       Container(   height: 220,

                    
child: 

            
               SingleChildScrollView(

            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center, 
                children: <Widget>[


                  Container(
                    margin: EdgeInsets.only(top: 0),
                  width: 260,
                  height: 125,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('img/logo2.png' ,fit: BoxFit.cover), 
                ),
                Container(
                    margin: EdgeInsets.only(top: 0),
                  width: 300,
                  height: 300,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('img/benefits.png' ,fit: BoxFit.cover), 
                )
                       
                ]
              )
            )
               ) 
 


       










       ),
   
   
   
   
   
    actions: <Widget>[
      BasicDialogAction(
        title: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  ),
);

 
                        },
                      child:Text(
                        'Click Here to See Your Benefits',
                        style: TextStyle(
                          color: Colors.grey[300], 
                          fontSize: 16,
                        ),
                      )),
                    ],
                  ),
                ),SizedBox(height:8),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Container(
                  padding: EdgeInsets.only(left:30, right: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'NIGHTS',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                           ShowUpAnimation(
  delayStart: Duration(seconds: 0),
  animationDuration: Duration(seconds: 1),
  child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '35',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[500], 
                                      
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            key: Key('Slo Mo'))],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'TOTAL POINTS',
                              style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ShowUpAnimation(
  delayStart: Duration(seconds: 0),
  animationDuration: Duration(seconds: 1),
  child:RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '6000',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[500],
                                     
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             key: Key('Slo Mo'))],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'YEARS',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                           ShowUpAnimation(
  delayStart: Duration(seconds: 0),
  animationDuration: Duration(seconds: 1),
  child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '2',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[500],
                                      
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            key: Key('Slo Mo'))], 
                        ),
                      )
                    ],
                  ),
                ),
                Divider(

                  height: 25,
                  color: Colors.grey[300],
                ),


               
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),

            
       




              
              ]
              
              ),
        
        
            
      
        
        
        
        
        
        
        ),
        SizedBox(height: 30),
        Container(  padding: EdgeInsets.only(left: 20),
                           color: Colors.grey[100],    
                           height: 30,
                           width: MediaQuery.of(context).size.width, 
                           child: Text("Manage Your Account" ,style: TextStyle(
    fontSize: 13,
    fontFamily: 'Montserrat',
  ),),         




                      )   ,   
        
                      Container(

                        decoration: BoxDecoration(
                      color: Colors.white,
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),  // changes position of shadow
      ),
    ],


            )
                               ,
                           height: 305,
                           width: MediaQuery.of(context).size.width,          
                       
                         child:Column (

                        crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

               
               
                Container(   

width: MediaQuery.of(context).size.width,
 padding: EdgeInsets.only( left:20,top:20,bottom: 20),
                     child: Row ( 
                       children: <Widget>[

                Text(" Account Name : " ,style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  )),
                                Text(user_name.toString(),style: TextStyle(
      color: Colors.grey[900],
      fontFamily: 'Montserrat',
      fontSize: 15,
      fontWeight: FontWeight.w600))

                       ])



                ), Divider(
                  height: 25,
                 
                  color: Colors.grey[300],
                ), 
                
                
               GestureDetector(
                
                onTap:(){


                                      
                                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScanScreen()),
            );
                  
                },
                
                child:Container(   

width: MediaQuery.of(context).size.width,
 padding: EdgeInsets.only( left:25,top:10,bottom: 10),
                   
                child:Text("Scan to Check in" ,style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  )),
                                 

                       


                )) ,Divider(
                  height: 25,
                 
                  color: Colors.grey[300],
                ),
                
                InkWell(
                  onTap: (){
                    print("Card tap");
                      
                                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardScreen()),
            );
                       
                  },
               child: Container(   width:MediaQuery.of(context).size.width,

 padding: EdgeInsets.only( left:25,top:10,bottom: 10), 
                child: Text("Membership Card" ,style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  ))




                )), Divider(
                  height: 25,
                 
                  color: Colors.grey[300],
                ), 
                
                
                GestureDetector(
                 onTap: (){

                    showPlatformDialog(
  context: context,
  builder: (_) => BasicDialogAlert(
    title: Text("MEMBER BENEFTS" , style:  TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  )),
    content: 
       Container(   height: 300,

                    
child: 

            
               SingleChildScrollView(

            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center, 
                children: <Widget>[


                  Container(
                    margin: EdgeInsets.only(top: 0),
                  width: 260,
                  height: 125,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('img/logo2.png' ,fit: BoxFit.cover), 
                ),
                Container(
                    margin: EdgeInsets.only(top: 0),
                  width: 300,
                  height: 300,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('img/benefits.png' ,fit: BoxFit.cover), 
                )
                       
                ]
              )
            )
               ) 
 


       










       ),
   
   
   
   
   
    actions: <Widget>[
      BasicDialogAction(
        title: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  ),
);

                 },
              child:  Container(    width: MediaQuery.of(context).size.width,

 padding: EdgeInsets.only( left:25,top:10,bottom: 20),
                child: Text("Member Benefits" ,style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  ))




                )),/*Container(   

 padding: EdgeInsets.only( left:25,top:10,bottom: 25),
                child: Text("Settings" ,style: TextStyle(color: Colors.black, fontSize: 20, ))




                ),*/
             

                







              ]


                         )



                      )     ,


                       SizedBox(height: 30),
        Container(  padding: EdgeInsets.only(left: 20),
                           color: Colors.grey[100],    
                           height: 30,
                           width: MediaQuery.of(context).size.width, 
                           child: Text("Support" ,style: TextStyle(
    fontSize: 13,
    fontFamily: 'Montserrat',
  )),         




                      )  ,  Container(

                        decoration: BoxDecoration(
                      color: Colors.white,
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),  // changes position of shadow
      ),
    ],


            )
                               ,
                           height: 220,
                           width: MediaQuery.of(context).size.width,          
                       
                         child:Column (

                        crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Container(   

 padding: EdgeInsets.only( left:25,top:20,bottom: 10),
                child: Text("Call Us" ,style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  ))




                ), Divider(
                  height: 25,
                 
                  color: Colors.grey[300],
                ), Container(   

 padding: EdgeInsets.only( left:25,top:10,bottom: 20),
                child: Text("About Sunbird Hotels" ,style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  ))




                ),Divider(
                  height: 25,
                 
                  color: Colors.grey[300],
                ),
                GestureDetector(
                  onTap: (){



                                  setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'loggingout',
                        );

                               });
                               
                                Future<Null> logout() async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_email', null);

                                }

                                logout();

                              Future.delayed(Duration(milliseconds: 3000)).then((v) {


  
   OverlayScreen().pop();
     
                                //  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    //MyApp()), (Route<dynamic> route) => false);
              Phoenix.rebirth(context);
          


    });





                  },
                
                child:Container(   width:  MediaQuery.of(context).size.width,

 padding: EdgeInsets.only( left:25,top:10,bottom: 25),
                child: Text("Sign Out" ,style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 18,
  ))
                )



                ),
             

                







              ]


                         )



                      ) 
        

   





                 
                 
                 
                 
                 ] 
                 
                 
                 ),
    ),
         
                
    ),
    );
    
    
   
   
   
   
   
     
     
    
    
  }


  void setData()async {

 SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
       user_email = prefs.getString('user_email');
       user_name = prefs.getString('user_name');

   user_phone = prefs.getString('user_phone');

      
    });

   


print("account==============="+user_name);
print("account==============="+user_email);
print("acccount==============="+user_phone);




}
}

class StatCard extends StatelessWidget {
  final String title;
  final double total;
  final double achieved;
  final Image image;
  final Color color;

  const StatCard({
    Key key,
    @required this.title,
    @required this.total,
    @required this.achieved,
    @required this.image,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[200],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).accentColor.withAlpha(100),
                  fontSize: 14,
                ),
              ),
              
                    
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          CircularPercentIndicator(
            radius: 80.0,
            lineWidth: 8.0,
            percent: achieved / (total < achieved ? achieved : total),
            circularStrokeCap: CircularStrokeCap.round,
            center: image,
            progressColor: color,
            backgroundColor: Theme.of(context).accentColor.withAlpha(30),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: achieved.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).accentColor,
                ),
              ),
              TextSpan(
                text: ' / $total',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
  
}
