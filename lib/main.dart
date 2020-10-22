import 'package:flutter/material.dart';
import 'package:hotel_search/home_page.dart';
import 'package:hotel_search/splash.dart';
import 'package:flutter/services.dart';
import 'package:hotel_search/common/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_search/start.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hotel_search/bookings.dart';
import 'package:hotel_search/account.dart';
import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:overlay_screen/overlay_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';









void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    
    Phoenix(
      child:MyApp(),
    ));
    
    
}

 

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() =>  MyAppState();
}

class  MyAppState extends State< MyApp>
    with TickerProviderStateMixin {
  // This widget is the root of your application.
    TabController _controller;
    bool isloggedin = false;
    String user_email;
    bool newbooking = true;
  final List<Widget> tabBarScreens = [
    HomePage(),
    BookScreen(),
    Dashboard(),
     
  ];


        
       
    
       


  

void autoLogIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   String userId = prefs.getString('user_email');
    

    print('------------------------------------------------------------------------------------------------------------------------'+ userId.toString());

    if (userId != null) {
     
     setState(() {

        isloggedin = true;
        print('==================================my model     =================================' + isloggedin.toString());
      
       
     });
       
    
    
    }
  } 



 @override
  void initState() {
    super.initState();


    _controller = TabController(
        initialIndex: 0, length: tabBarScreens.length, vsync: this);
       

   autoLogIn();




   }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
   bool ready = false;

    @override
  Widget build(BuildContext context) {

    
        


   
    final themeData = HotelConceptThemeProvider.get();
      

  return ChangeNotifierProvider<MyModel>(   
  
  
  create: (context) => MyModel(),
  child: MaterialApp(
      title: 'Hotel Search',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: isloggedin ? Scaffold( 
        backgroundColor: themeData.scaffoldBackgroundColor,
        body: TabBarView(
          controller: _controller,
          children: tabBarScreens,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: TabBar(
          controller: _controller,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.transparent,
          isScrollable: false,
          tabs: [
            _buildTabIcon("img/tab_bar_home.svg", 0, themeData),
            _buildTabIcon("img/mooo.svg", 1, themeData),
             _buildTabIcon("img/tab_bar_profile.svg", 2, themeData),
          ],
          onTap: (index) {
            setState(() {});
          },
        ),

         
        ) : StarterPage() ,
      ));
    
  }
   Widget _buildTabIcon(String assetName, int index, ThemeData themeData) {


     

     
    return Tab(
      icon: SvgPicture.asset(
        assetName,
        color: index == _controller.index
            ? Color(0xff008d4b)
            : themeData.primaryColorLight,
      ),
    );
  }



   
}

  
  
  
   

  
  