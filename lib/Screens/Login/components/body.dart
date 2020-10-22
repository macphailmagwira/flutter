import 'package:flutter/material.dart';
import 'package:hotel_search/Screens/Login/components/background.dart';
import 'package:hotel_search/Screens/Signup/signup_screen.dart';
import 'package:hotel_search/components/already_have_an_account_acheck.dart';
import 'package:hotel_search/components/rounded_button.dart';
import 'package:hotel_search/components/rounded_input_field.dart';
import 'package:hotel_search/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:overlay_screen/overlay_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'dart:async';






import 'package:show_up_animation/show_up_animation.dart';


class BodyState extends StatefulWidget {
  Body createState() => Body();
}



class Body extends State<BodyState> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool checked;

  var user_name;
  var user_email;
  var user_phone;



   Future loginuser() async {
      
    
final QuerySnapshot result =
    await FirebaseFirestore.instance.collection('users').where('email', isEqualTo:_email.text.toString()).get();
   
    final QuerySnapshot result2 =
    await FirebaseFirestore.instance.collection('users').where('email', isEqualTo:_email.text.toString()).get().then((querySnapshot) {
    querySnapshot.docs.forEach((result) {
      print(result.data());

    
      
 


      setState(() {
        user_name = result.data()['name'];
        user_email = result.data()['email'];
        user_phone = result.data()['phone'];

      });
    
    });
  });


print(user_name);

     print(user_email);
      print(user_phone);


SharedPreferences user_info = await SharedPreferences.getInstance();
  
        user_info.setString('user_name', user_name);

        user_info.setString('user_phone', user_phone);

  final List < DocumentSnapshot > documents = result.docs;




  if (documents.length > 0) { 

   setState(() {
     checked = true;
   });
 

} else {  

      setState(() {
     checked = false;
   });

   

}



    

   

  }

      Future login() async {

SharedPreferences user_info = await SharedPreferences.getInstance();
    user_info.setString('user_email', _email.text);
print(' login page ===========================================================================' +_email.text.toString());
           
    }


  @override
  Widget build(BuildContext context) {

     OverlayScreen().saveScreens({
      "email": CustomOverlayScreen(
          backgroundColor: Colors.transparent,
          content: ShowUpAnimation(
                  delayStart: Duration(seconds: 0),
                  animationDuration: Duration(seconds: 1),
                  direction: Direction.vertical,
                  offset: 1,
                  child: Container(
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
                              "Please Enter Your Email",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 25),
                            Container(

                     width: MediaQuery.of(context).size.width/2 - 20 - 5,
                    decoration: BoxDecoration(
                      
                      color: Color(0xff008d4b)
                    ),
                  
                      child: MaterialButton(
                        onPressed: () {
                       OverlayScreen().pop();
                       
                         
                        },
                        minWidth: double.infinity,
                        child: Text("OK", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w800),),
                      ),
                    
                  
                         
                       
                             
                )]))
              ])))),

               "password": CustomOverlayScreen(
          backgroundColor: Colors.transparent,
          content: ShowUpAnimation(
                  delayStart: Duration(seconds: 0),
                  animationDuration: Duration(seconds: 1),
                  direction: Direction.vertical,
                  offset: 1,
                  child: Container(
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
                              "Please Enter Your Password",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 25),
                            Container(

                     width: MediaQuery.of(context).size.width/2 - 20 - 5,
                    decoration: BoxDecoration(
                      
                      color: Color(0xff008d4b)
                    ),
                  
                      child: MaterialButton(
                        onPressed: () {
                       OverlayScreen().pop();
                       
                         
                        },
                        minWidth: double.infinity,
                        child: Text("OK", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w800),),
                      ),
                    
                  
                         
                       
                             
                )]))
              ])))),
               "user_not_found": CustomOverlayScreen(
          backgroundColor: Colors.transparent,
          content: ShowUpAnimation(
                  delayStart: Duration(seconds: 0),
                  animationDuration: Duration(seconds: 1),
                  direction: Direction.vertical,
                  offset: 1,
                  child: Container(
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
                              "Account Not Found",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 25),
                            Container(

                     width: MediaQuery.of(context).size.width/2 - 20 - 5,
                    decoration: BoxDecoration(
                      
                      color: Color(0xff008d4b)
                    ),
                  
                      child: MaterialButton(
                        onPressed: () {
                       OverlayScreen().pop();
                       
                         
                        },
                        minWidth: double.infinity,
                        child: Text("OK", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w800),),
                      ),
                    
                  
                         
                       
                             
                )]))
              ])))), "login": CustomOverlayScreen(
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
                              "Signing in...",
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
              ]))),"payment_successfull": CustomOverlayScreen(
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
                              "Account Created",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 25),

                          Container(
                                  child: Image.asset("img/check-circle.gif",
                                      width: 45,
                                      height: 45,
                                      fit: BoxFit.contain))
                        ]))
              ])))







                });

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.asset(
              "assets/images/brand.png",
              height: 100, width: MediaQuery.of(context).size.width - 80,
            ),SizedBox(height: 30),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(controller: _email,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(controller: _password,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {

                  if(_email.text.isEmpty){


                  setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'email',
                        );

                               });



                  }else if (_password.text.isEmpty){


                           setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'password',
                        );

                               });





                  }else {

                    loginuser();
 
                       if (checked == false) {
 

                              setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'user_not_found',
                        );

                               });

 


                          } else if(checked == true ){


 
         OverlayScreen().show(
                          context,
                          identifier: 'login',
                        );

                            


         Future.delayed(Duration(milliseconds: 3000)).then((v) {

            OverlayScreen().pop();

                  login();

              Phoenix.rebirth(context);




    });
 
          





                          
                          
                          
                          
                        
                          
                          
                          
                          
                          
                          
                          
                  
                  }
                  
                  
                  }




























              
              }),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
