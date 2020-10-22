import 'package:flutter/material.dart';
import 'package:hotel_search/Screens/Login/login_screen.dart';
import 'package:hotel_search/Screens/Signup/components/background.dart';
import 'package:hotel_search/Screens/Signup/components/or_divider.dart';
import 'package:hotel_search/Screens/Signup/components/social_icon.dart';
import 'package:hotel_search/components/already_have_an_account_acheck.dart';
import 'package:hotel_search/components/rounded_button.dart';
import 'package:hotel_search/components/rounded_input_field.dart';
import 'package:hotel_search/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:overlay_screen/overlay_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hotel_search/main.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';






class BodyState extends StatefulWidget {
  Body createState() => Body();
}



class Body extends State<BodyState> {

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
bool checked;
  var input_problem;
  
   Future checkuser() async {
      
    
final QuerySnapshot result =
    await FirebaseFirestore.instance.collection('users').where('email', isEqualTo:_email.text.toString()).get();

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


       login() async {

 SharedPreferences user_info = await SharedPreferences.getInstance();
    user_info.setString('user_email', _email.text.toString());
    user_info.setString('user_name', _name.text.toString());
    user_info.setString('user_phone', _phone.text.toString());
print('sign up page ===========================================================================' +_email.text.toString());
           
    }



  Widget build(BuildContext context) {

     OverlayScreen().saveScreens({
      "name": CustomOverlayScreen(
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
                              "Please Enter Your Name",
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
               "phone": CustomOverlayScreen(
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
                              "Please Enter Your Number",
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
               "creating_account": CustomOverlayScreen(
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
                              "Creating Account...",
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
              ]))),
              "already": CustomOverlayScreen(
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
                              "Email Already Regstered",
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
              ]))))







                });

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "",
              style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 20,
  ),
            ),
           SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/brand.png",
              height: 100, width: MediaQuery.of(context).size.width - 80,
            ),SizedBox(height: 30),
            RoundedInputField(
              controller: _name,
              hintText: "Name", 
              onChanged: (value) {},
            ),RoundedInputField( icon: Icons.mail,  controller: _email,
              hintText: "Your Email",
              onChanged: (value) {},
            ), RoundedInputField(icon: Icons.phone,  controller: _phone,
              hintText: "Phone",
              onChanged: (value) {},
            ),
            RoundedPasswordField(controller: _password,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {


       
                    if(_name.text.isEmpty){
                               setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'name',
                        );

                               });
                        
                     



                    }else if(_email.text.isEmpty){
                               setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'email',
                        );

                               });
                        
                     



                    }else if(_phone.text.isEmpty){
                               setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'phone',
                        );

                               });
                        
                     



                    }else if(_password.text.isEmpty){
                               setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'password',
                        );

                               });
                        
                     



                    }else{



                     checkuser();


                     if(checked == true){


 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'already',
                        );

                               });






                     }else if (checked == false){

                             setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'creating_account',
                        );

                               });


                                   Future.delayed(Duration(milliseconds: 2000)).then((v) {
      OverlayScreen().pop();
     setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'payment_successfull',
                        );

                               });

                                  


                                      FirebaseFirestore.instance.collection("users").add(
  {
    "email" : _email.text.toString(),

    "name" : _name.text.toString(),
    "phone" : _phone.text.toString(),
    "password" :  _password.text.toString(), //+ randomNumber.toString() + ".svg",
   





     
     
     
     

    
  }).then((value){

     
login();





    
                                         
    print("================================sucess=============================================================");
    print(value.documentID);
  });

                               
                                   Future.delayed(Duration(milliseconds: 3000)).then((v) {


   


     OverlayScreen().pop();
                       Phoenix.rebirth(context);

                          // Navigator.push(
           //   context,
            //  MaterialPageRoute(builder: (context) => MyApp()));



 });








    });
                        

                     }



                    }














              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen(); 
                    }, 
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
