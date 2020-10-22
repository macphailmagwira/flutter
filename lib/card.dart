import 'package:flutter/material.dart';
import 'package:hotel_search/styles/texts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cupertino_setting_control/cupertino_setting_control.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flip_card/flip_card.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';






class CardScreen extends StatefulWidget {
  @override
  Card createState() => Card();
}



class Card extends State<CardScreen> {
  String user_email;
  String user_name;
  String user_phone;

   
  @override
  void initState() {
   
    super.initState();
setData();



    
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
        actions: <Widget>[

           ],
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        title: Text('Sunbird Premier Club' ,style: TextStyle( 
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
              crossAxisAlignment: CrossAxisAlignment.center, 
                children: <Widget>[
       
          

                 FlipCard(
  direction: FlipDirection.HORIZONTAL, // default
  front: Container(        margin: EdgeInsets.all(25),
                                 
                            width: MediaQuery.of(context).size.width ,
                            height:250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                image: AssetImage("img/card.png"), fit: BoxFit.cover),
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),  boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),  // changes position of shadow
      )
                ])
    
         



     
    ),
    back: Container(
             margin: EdgeInsets.all(25),
                            width: MediaQuery.of(context).size.width ,
                            height:250,
                          
                            decoration: BoxDecoration(
                               image: DecorationImage(
                image: AssetImage("img/card.png"), fit: BoxFit.cover),
                color: Colors.grey[300], 
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20), boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),  // changes position of shadow
      ),
    ]
                            )

                      

    ),
),
    Container( padding: EdgeInsets.only(left:30,top:30),
    width: MediaQuery.of(context).size.width,
 

               child:Text(user_name.toString(),style: TextStyle( 
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 30,
  ))
             

    ),Container( padding: EdgeInsets.only(left:30,top:5),
    width: MediaQuery.of(context).size.width,
 

               child:Text("PLATNUM MEMBER" ,style: TextStyle(color: Hexcolor('#3f3f41'),
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ))
             

    ),

    Container( padding: EdgeInsets.only(left:30,top:5),
    width: MediaQuery.of(context).size.width,
 

               child:Text("207665434678" ,style: TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Montserrat',
      fontSize: 30,
      fontWeight: FontWeight.w600))
             

    ), SizedBox(height:90)    , Center(child:Container( 

            child: QrImage(
  data: '207665434678',
  version: 3,
  size: 170,
  gapless: false,
  embeddedImage: AssetImage('img/logo.png'),
  embeddedImageStyle: QrEmbeddedImageStyle(
    size: Size(30, 30),
  ),
),
             
                 





    )),
    Container( padding: EdgeInsets.only(left:0,top:30),
    width: MediaQuery.of(context).size.width,
 

               child:Text("Sunbird Hotels © 2020 All Rights Reserved" ,textAlign: TextAlign.center,style: TextStyle( 
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 10,
  ))
             

    )
                    




              
              ]
              
              ),



            )
            )
            
            
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
