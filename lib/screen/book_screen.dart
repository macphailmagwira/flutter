import 'package:flutter/material.dart';
import 'package:hotel_search/common/theme.dart';
import 'package:hotel_search/sliding_bottom_sheet_content.dart';
import 'package:hotel_search/home_page.dart';
import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:hotel_search/common/navigation/fade_route.dart';
import 'package:ripple_backdrop_animate_route/ripple_backdrop_animate_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:secure_random/secure_random.dart';
import 'package:hotel_search/payment.dart';






class BookScreen extends StatefulWidget {
  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  void initState() {
    super.initState();

    /*Future.delayed(Duration(milliseconds: 1000)).then((v) {
      Navigator.pop(context);
    });*/
  }
var secureRandom = SecureRandom();

  @override
  Widget build(BuildContext context) {

    final themeData = HotelConceptThemeProvider.get();
    return  Scaffold(
                backgroundColor: Colors.grey[50],
                appBar: AppBar(
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    elevation: 0,
                    titleSpacing: 0,
                    backgroundColor: Colors.white,
                    title: Text('Booking Confirmation',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                        ))),
                body: SingleChildScrollView(
                    child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height,
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 80/100,
                            height: 70,
                            child: Image.asset(
                              "assets/images/brand.png",
                              width: 0,
                              height: 0,
                              fit: BoxFit.cover,
                            )),
                        Divider(
                          height: 25,
                          color: Colors.grey[300],
                        ),
                        Container(
                            padding:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            child: Text('Review \nYour Booking',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 30,
                                ))),
                        Divider(
                          height: 25,
                          color: Colors.grey[300],
                        ),
                        Consumer<MyModel>(
                          builder: (context, myModel, children) {

                          
                          return  Row(children: <Widget>[
                          
                             Container(
                            padding: EdgeInsets.only(left: 20, top: 0, bottom: 30),
                            width: MediaQuery.of(context).size.width/2,
                            child: Text("Hotel Name: ",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ))),
                          
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 20, bottom: 30),
                            width: MediaQuery.of(context).size.width/2,
                            child: Text(myModel.hotelname.toString(),
                                style: TextStyle(
    fontSize: 19,
    fontFamily: 'Montserrat',
  )))
                                
                                
                                 ]);}),
                        Row(children: <Widget>[
                            Container( width:MediaQuery.of(context).size.width/2,
                             
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text(
                                              "Booking Dates: ",
                                              style: TextStyle(
      color: Colors.grey[900],
      fontFamily: 'Montserrat',
      fontSize: 17,
      fontWeight: FontWeight.w500))),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 20, top: 5),
                                        width: 200,
                                        child: Text("Number of Rooms: ",
                                            style:TextStyle(
      color: Colors.grey[900],
      fontFamily: 'Montserrat',
      fontSize: 17,
      fontWeight: FontWeight.w500)),
                                      ),
                                      Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text( "Check In time: ",
                                              style: TextStyle(
      color: Colors.grey[900],
      fontFamily: 'Montserrat',
      fontSize: 17,
      fontWeight: FontWeight.w500))),   Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text("Check Out time: ",
                                              style: TextStyle(
      color: Colors.grey[900],
      fontFamily: 'Montserrat',
      fontSize: 17,
      fontWeight: FontWeight.w500))),
                                      Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text("Room Type: ",
                                              style: TextStyle(
      color: Colors.grey[900],
      fontFamily: 'Montserrat',
      fontSize: 17,
      fontWeight: FontWeight.w500)))
                                    ])),


                          Consumer<MyModel>(
                              builder: (context, myModel, children) {


                                  
                            return Container( width:MediaQuery.of(context).size.width/2,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text(
                                              myModel.datesChosen.toString(),
                                              style: TextStyle(
    fontSize: 17,
    fontFamily: 'Montserrat',
  ))),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 20, top: 5),
                                        width: 200,
                                        child: Text(myModel.roomtype.toString(),
                                            style:TextStyle(
    fontSize: 17,
    fontFamily: 'Montserrat',
  )),
                                      ),
                                      Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text( myModel.checkin.toString(),
                                              style: TextStyle(
    fontSize: 17,
    fontFamily: 'Montserrat',
  ))),   Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text(myModel.checkout.toString(),
                                              style: TextStyle(
    fontSize: 17,
    fontFamily: 'Montserrat',
  ))),
                                      Container(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 5),
                                          width: 200,
                                          child: Text(myModel.roomname.toString(),
                                              style: TextStyle(
    fontSize: 17,
    fontFamily: 'Montserrat',
  )))
                                    ]));
                          }),
                          
                        
                        ]),
                        SizedBox(height: 20),
                        Divider(
                          height: 25,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 20),
                        Consumer<MyModel>(
                          builder: (context, myModel, children) {

                          
                          return Container(
                          color: Color(0xff008d4b),
                          height: 60,
                          width: MediaQuery.of(context).size.width - 50,
                          child: FlatButton(
                            onPressed: () {


                                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentScreen()),
            );
                              /*...*/
                  

/*

                  FirebaseFirestore.instance.collection("bookings").add(
  {
    "name" : "Brian",

    "booking_dates" : myModel.datesChosen.toString(),
    "checkin" : myModel.checkin.toString(),
    "checkout" :  myModel.checkout.toString(), //+ randomNumber.toString() + ".svg",
    "image" : myModel.mainimage.toString(),
    "number_of_people" : myModel.roomtype.toString(),
        "status1" : "pending",

    "status2" : "preparing",
        "location" : myModel.location.toString(),
        "customer" : myModel.customer.toString(),
                "hotel_name" : myModel.hotelname.toString(),
                        "roomname" : myModel.roomname.toString(),
                        "booking_number" : secureRandom.nextString(
      length: 15, charset: '0123456789').toString(),
      





     
     
     
     

    
  }).then((value){
    myModel.updateData2('Click here');
    myModel.updateData1('Click here');
                                      
                                         
    print("================================sucess=============================================================");
    print(value.documentID);
  });


           Future.delayed(Duration(milliseconds:2000)).then((v) {
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pop(context);
            Navigator.pop(context);

    }
    
    
    
    );
    
                      Navigator.of(context).push(TransparentRoute(
  builder: (context) => RippleBackdropAnimatePage(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        Text("Your Booking \n Request was submitted" ,textAlign: TextAlign.center, style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 30,
  ) ),
      ],
    ),
    childFade: true ,
    duration: 300,
    blurRadius: 100.0,
    bottomButton: Icon(Icons.check_circle),
    bottomHeight: 60.0,
    bottomButtonRotate: false,
  ),
)); */





                            },
                            child: Text(
                              "Proceed to Payment",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );}),
                        SizedBox(height: 20),
                        Container(
                          color: Colors.orangeAccent,
                          height: 60,
                          width: MediaQuery.of(context).size.width - 50,
                          child: FlatButton(
                            onPressed: () {
                              /*...*/

                              Navigator.of(context).pop();
                                                            Navigator.of(context).pop();
                                                             Navigator.of(context).pop();
                                                            
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ]),
                )));
  }
}
