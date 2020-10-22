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
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:overlay_screen/overlay_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'package:flutter_spinkit/flutter_spinkit.dart';

class PaymentScreen extends StatefulWidget {
  @override
  Payment createState() => Payment();
}

class Payment extends State<PaymentScreen> {
    checkinfo() async {

 SharedPreferences user_info = await SharedPreferences.getInstance();
    user_email = user_info.getString('user_email');
  
           
    }

  var user_email;
  @override
  void initState() {

    super.initState();

     checkinfo();

    /*Future.delayed(Duration(milliseconds: 1000)).then((v) {
      Navigator.pop(context);
    });*/
  }

  

  var secureRandom = SecureRandom();
  bool paying = true;

  @override
  Widget build(BuildContext context) {

    // HERE IS MY OVERLAY PLUGIN ***************************************************************************************************************************************************************************************
    OverlayScreen().saveScreens({
      "payment_process1": CustomOverlayScreen(
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
                              "Processing Payment",
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
              ]))), "payment_process2": CustomOverlayScreen(
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
                              "Payment Successfull",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 25),

                          // HERE IS MY CONDITIONAL THAT IS NOT CHANGING TO THE SECOND ONE
                          Container(
                                  child: Image.asset("img/check-circle.gif",
                                      width: 45,
                                      height: 45,
                                      fit: BoxFit.contain))
                        ]))
              ])))
    });

    final themeData = HotelConceptThemeProvider.get();
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: 0,
            titleSpacing: 0,
            backgroundColor: Colors.white,
            title: Text('Payment',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                ))),
        body: Consumer<MyModel>(builder: (context, myModel, children) {
          return SingleChildScrollView(
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
                      padding: EdgeInsets.only(top: 35),
                      width: MediaQuery.of(context).size.width,
                      child: Text("Confirm Order and Pay",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                          ))),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                          "Please confirm your booking details and proceed to pay",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                          ))),
                  Container(
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[50],
                              spreadRadius: 3,
                              offset: Offset(0, 1),
                              blurRadius: 1),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width - 30,
                      height: 510,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  "PAYMENT METHODS",
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                )),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          width: 100,
                                          height: 60,
                                          margin: EdgeInsets.only(right: 20),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey[50],
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 1),
                                                  blurRadius: 1),
                                            ],
                                          ),
                                          child: Image.asset(
                                            "img/visa.png",
                                            width: 20,
                                            height: 20,
                                            fit: BoxFit.contain,
                                          )),
                                      Container(
                                          width: 100,
                                          height: 60,
                                          margin: EdgeInsets.only(right: 20),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey[50],
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 1),
                                                  blurRadius: 1),
                                            ],
                                          ),
                                          child: Image.asset(
                                            "img/mastercard.png",
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.contain,
                                          )),
                                      Container(
                                          width: 100,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey[50],
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 1),
                                                  blurRadius: 1),
                                            ],
                                          ),
                                          child: Image.asset(
                                            "img/paypal.png",
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.contain,
                                          )),
                                    ])),
                            Container(
                                padding: EdgeInsets.only(top: 60),
                                child: Text(
                                  "PAYMENT DETAILS",
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width - 30,
                                padding: EdgeInsets.only(top: 20, left: 20),
                                child: Text(
                                  "Cardholder Name",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                padding: EdgeInsets.only(top: 0, left: 0),
                                child: TextField(
                                  decoration: InputDecoration(),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width - 30,
                                padding: EdgeInsets.only(top: 20, left: 20),
                                child: Text(
                                  "Card Number",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                padding: EdgeInsets.only(top: 0, left: 0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.credit_card),
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                margin: EdgeInsets.only(top: 20, left: 0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              39.4 /
                                              100,
                                          padding:
                                              EdgeInsets.only(top: 0, left: 0),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: "Date",
                                            ),
                                          )),
                                      SizedBox(width: 5),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              39.3 /
                                              100,
                                          padding:
                                              EdgeInsets.only(top: 0, left: 0),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: "CVV",
                                            ),
                                          ))
                                    ]))
                          ])),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 0),
                    color: Color(0xff008d4b),
                    height: 60,
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: FlatButton(
                      onPressed: () {

                        // HERE IS MY BUTTON THAT SHOWS THE OVERLAY SCREEN AND CHANGES THE VALUE OF THE BOOL AFTER A FEW SECONDS ************************************************************

                        Future.delayed(Duration(milliseconds: 3000)).then((v) {
                          // Navigator.pop(context);
                         

OverlayScreen().pop();

    OverlayScreen().show(
                          context,
                          identifier: 'payment_process2',
                        );   

                                               
                       Future.delayed(Duration(milliseconds: 3000)).then((v) {


                                       OverlayScreen().pop();
                                        Navigator.of(context).pop();
                                         Navigator.of(context).pop();
                                 Navigator.of(context).pop();
Navigator.of(context).pop();


                      
                              });


                        });

                        OverlayScreen().show(
                          context,
                          identifier: 'payment_process1',
                        );
                     
               
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
        "customer" : user_email.toString(),
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


                      },
                      child: Text(
                        "Pay 160 USD",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ]),
          ));
        }));
  }
}
