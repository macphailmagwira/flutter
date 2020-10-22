import 'package:flutter/material.dart';
import 'package:hotel_search/styles/texts.dart';
import 'package:hotel_search/styles/colors.dart';
import 'package:hotel_search/widgets/result.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'dart:convert';
import 'package:hotel_search/detail1.dart';

import 'package:hotel_search/common/icons.dart';
import 'package:hotel_search/common/stub_data.dart';
import 'package:hotel_search/common/theme.dart';
import 'package:hotel_search/parallax_page_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:hotel_search/splash.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/services.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:hotel_search/start.dart';
import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:ripple_backdrop_animate_route/ripple_backdrop_animate_route.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:overlay_screen/overlay_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:hotel_search/FadeAnimation.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:shared_preferences/shared_preferences.dart';



class HomePage extends StatefulWidget {
  Home createState() => Home();
}

class Home extends State<HomePage> with AutomaticKeepAliveClientMixin {
  Home createState() => Home();
  static bool ready = true;
  bool _visible = true;
  String user_email;
  String user_name;
  String user_phone;


           
    
void setData()async {

 SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
       user_email = prefs.getString('user_email');
       user_name = prefs.getString('user_name');

   user_phone = prefs.getString('user_phone');

      
    });

   


print("homepage==============="+user_name);
print("homepage==============="+user_email);
print("homepage==============="+user_phone);




}

  void initState() {
    super.initState();
      setData();
      
         WidgetsBinding.instance.addPostFrameCallback((_) => OverlayScreen().show(
          context,
          identifier: 'custom2',
        ));

    Future.delayed(Duration(milliseconds: 8000)).then((v) {
      OverlayScreen().pop();
    });


    

    
 
          
    
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
  }

  final List<String> hotelCategories = StubData().hotelCategories;
  final List<capitalCard> capital = StubData().capital;
  final List<livingstoniaCard> livingstonia = StubData().livingstonia;
  final List<mountsocheCard> mountsoche = StubData().mountsoche;
  final List<mzuzuCard> mzuzu = StubData().mzuzu;
  final List<lilongweCard> lilongwe = StubData().lilongwe;
  final List<kuchaweCard> kuchawe = StubData().kuchawe;
  final List<nkopolaCard> nkopola = StubData().nkopola;
  
  int checkedItem = 0;

  static const PickerData2 = '''
[
    [
        1 ,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10
    ],
    [
       1 ,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10
    ],
    [
        " "
    ]
]
    ''';

  static var datePicked = "Click here";
  static var roomPicked = "Click here";
  bool start = false;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    super.build(context);

    OverlayScreen().saveScreens({
      'custom2': CustomOverlayScreen(
        backgroundColor: Colors.white,
        content: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
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
      )
    ,  'custom3': CustomOverlayScreen(
        backgroundColor: Colors.white,
        content: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(



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
      ),
      "dates": CustomOverlayScreen(
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
                              "Please Specify your booking dates before you proceed",  textAlign: TextAlign.center,
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

              "rooms": CustomOverlayScreen(
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
                              "Please Specify Rooms and Guests before you proceed", textAlign: TextAlign.center,
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

    final themeData = HotelConceptThemeProvider.get();

    return Scaffold(
        key: _drawerKey,
        drawerEdgeDragWidth: 0,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[ListTile()],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              "Sunbird Hotels",
              style: textStyles['appBar'],
            ),
            leading: IconButton(
              onPressed: () {
                _drawerKey.currentState.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
            ),
            actions: <Widget>[
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    'img/logo.jpg',
                    width: 34,
                    height: 34,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Consumer<MyModel>(builder: (context, myModel, children) {
          return Column(
            children: <Widget>[
              Container(
                color: colorStyles['greyBackground'],
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        ShowUpAnimation(
                            delayStart: Duration(seconds: 8),
                            animationDuration: Duration(seconds: 1),
                            child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 5, bottom: 10),
                                child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.orangeAccent)),
                            key: Key('Slo Mo')),
                        ShowUpAnimation(
                            delayStart: Duration(seconds: 8),
                            animationDuration: Duration(seconds: 1),
                            child: Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text("Welcome, " + user_name.toString(),
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                    ))))
                      ]),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  const Radius.circular(30.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Book your next Stay",
                                  contentPadding: EdgeInsets.only(
                                    left: 20,
                                    bottom: 15,
                                    top: 15,
                                    right: 20,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff008d4b),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                        ),
                        child: Consumer<MyModel>(
                            builder: (context, myModel, child) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              InkWell(
                                  onTap: () async {
                                    final List<DateTime> picked =
                                        await DateRagePicker.showDatePicker(
                                            context: context,
                                            initialFirstDate:
                                                new DateTime.now(),
                                            initialLastDate:
                                                (new DateTime.now())
                                                    .add(new Duration(days: 7)),
                                            firstDate: new DateTime(2015),
                                            lastDate: new DateTime(2022));
                                    if (picked != null && picked.length == 2) {
                                      print(picked[0]);
                                      String convertedDate1 =
                                          new DateFormat("MMMd")
                                              .format(picked[0]);
                                      String convertedDate2 =
                                          new DateFormat("MMMd")
                                              .format(picked[1]);

                                      var messedUp = ''+ convertedDate1 +
                                          ' to ' +
                                          convertedDate2 + '';

                                      myModel.updateData1(messedUp);
                                      setState(() {});
                                    }
                                    print("Tapped on container");
                                  },
                                  child: Container(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Choose Dates",
                                        style: textStyles['dataHeader'],
                                      ),
                                      Text(
                                        myModel.datesChosen.toString(),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                        ),
                                      )
                                    ],
                                  ))),
                              Container(
                                width: 1,
                                height: 30,
                                color: Colors.grey[600],
                              ),
                              InkWell(
                                  onTap: () {
                                    print("Pressed");

                                    new Picker(
                                        adapter: PickerDataAdapter<String>(
                                            pickerdata: new JsonDecoder()
                                                .convert(PickerData2),
                                            isArray: true),
                                        hideHeader: true,
                                        title: new Text("No. of Rooms and Adults", style: TextStyle(fontSize: 17)),
                                        onConfirm: (Picker picker, List value) {
                                          print(value.toString());
                                          print(picker.getSelectedValues());
                                          String messedup2 = picker
                                                  .getSelectedValues()[0] +
                                              ' Room' +
                                              ' - ' +
                                              picker.getSelectedValues()[1] +
                                              ' Adult';

                                          myModel.updateData2(messedup2);
                                          setState(() {});
                                        }).showDialog(context);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Number Of Rooms",
                                        style: textStyles['dataHeader'],
                                      ),
                                      Text(
                                        myModel.roomtype.toString(),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 5, right: 0, left: 0, bottom: 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 210,
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                              onTap: () {
                                setState(() {
                                  checkedItem = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 400),
                                height: double.infinity,
                                margin: EdgeInsets.only(
                                    left: index == 0 ? 20 : 5, right: 5),
                                decoration: BoxDecoration(
                                  color: index == checkedItem
                                      ? Colors.grey[100]
                                      : Colors.grey[200],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      hotelCategories[index],
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                        color: index == checkedItem
                                            ? Color(0xff008d4b)
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ));
                        },
                        itemCount: hotelCategories.length,
                      ),
                    ),
                    Spacer(),
                    Text("Filters"),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sort,
                        color: Colors.grey[800],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              if (myModel.datesChosen == "Click here") {
                                 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'dates',
                        );

                               });
                              } else if (myModel.roomtype == "Click here") {
                                setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'rooms',
                        );

                               });
                              } else {
                                showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  builder: (context, scrollController) =>
                                      Container(
                                          decoration: BoxDecoration(
                                              color: colorStyles[
                                                  'greyBackground']),
                                          height: 340,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 20),
                                                    child: Text(
                                                        "Available Room types",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                        ))),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 5),
                                                    child: Text(
                                                        "Please Select your prefered room of choice",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'Montserrat',
                                                        ))),
                                                Spacer(),
                                                Container(
                                                    child: ParallaxPageView(
                                                  viewportFraction: 0.6,
                                                  height: 250,
                                                  data: capital,
                                                  onCardTap: (hotel) {
                                                    Navigator.of(context).push(
                                                      PageRouteBuilder<void>(
                                                        pageBuilder: (BuildContext
                                                                context,
                                                            Animation<double>
                                                                animation,
                                                            Animation<double>
                                                                secondaryAnimation) {
                                                          return AnimatedBuilder(
                                                              animation:
                                                                  animation,
                                                              builder: (BuildContext
                                                                      context,
                                                                  Widget
                                                                      child) {
                                                                return DetailScreen(
                                                                    heroTag:
                                                                        "${hotel.cardTitle()}",
                                                                    imageAsset:
                                                                        hotel
                                                                            .cardImageAsset(),
                                                                    description:
                                                                        hotel
                                                                            .cardDescription(),
                                                                    location: hotel
                                                                        .cardLocation(),
                                                                    hotel_name:
                                                                        hotel
                                                                            .cardHotelName());
                                                              });
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ))
                                              ])),
                                );
                              }

                              /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(heroTag: "hbkkkbkkn      ",
                                imageAsset: 'assets/images/detail1.jpg')),
            );
    */
                            },
                            child: ShowUpAnimation(
                                delayStart: Duration(seconds: 0),
                                animationDuration: Duration(seconds: 1),
                                child: Result(
                                    name: "Sunbird Capital",
                                    image: "assets/images/sunbird-capital.jpg",
                                    location: "City Center, Lilongwe",
                                    priceHead: "Price Range",
                                    priceRange: "\$50 - \$100",
                                    distance: 2,
                                    cost: 180,
                                    lat: -13.955178,
                                    long: 33.796267,
                                    reviewCount: 80,
                                    image2: "img/capital2.jpg",
                                    image3: "img/capital3.jpg"),
                                key: Key('Slo Mo'))),
                        GestureDetector(
                            onTap: () {

                             if (myModel.datesChosen == "Click here") {
                                 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'dates',
                        );

                               });
                              } else if (myModel.roomtype == "Click here") {
                                setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'rooms',
                        );

                               });
                              } else {
                                showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  builder: (context, scrollController) =>
                                      Container(
                                          decoration: BoxDecoration(
                                              color: colorStyles[
                                                  'greyBackground']),
                                          height: 340,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 20),
                                                    child: Text(
                                                        "Available Room types",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                        ))),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 5),
                                                    child: Text(
                                                        "Please Select your prefered room of choice",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'Montserrat',
                                                        ))),
                                                Spacer(),
                                                Container(
                                                    child: ParallaxPageView(
                                                  viewportFraction: 0.6,
                                                  height: 250,
                                                  data: livingstonia,
                                                  onCardTap: (hotel) {
                                                    Navigator.of(context).push(
                                                      PageRouteBuilder<void>(
                                                        pageBuilder: (BuildContext
                                                                context,
                                                            Animation<double>
                                                                animation,
                                                            Animation<double>
                                                                secondaryAnimation) {
                                                          return AnimatedBuilder(
                                                              animation:
                                                                  animation,
                                                              builder: (BuildContext
                                                                      context,
                                                                  Widget
                                                                      child) {
                                                                return DetailScreen(
                                                                    heroTag:
                                                                        "${hotel.cardTitle()}",
                                                                    imageAsset:
                                                                        hotel
                                                                            .cardImageAsset(),
                                                                    description:
                                                                        hotel
                                                                            .cardDescription(),
                                                                    location: hotel
                                                                        .cardLocation(),
                                                                    hotel_name:
                                                                        hotel
                                                                            .cardHotelName());
                                                              });
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ))
                                              ])),
                                );
                              }

                              /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(heroTag: "hbkkkbkkn      ",
                                imageAsset: 'assets/images/detail1.jpg')),
            );
    */
                            },
                            child: ShowUpAnimation(
                                delayStart: Duration(seconds: 0),
                                animationDuration: Duration(seconds: 1),
                                child: Result(
                                    name: "Sunbird Livingstonia",
                                    image: "assets/images/sunbird2.jpg",
                                    location: "Lake Malawi, Salima",
                                    priceHead: "Price Range",
                                    priceRange: "\$80 - \$130",
                                    lat: -13.718095,
                                    long: 34.627096,
                                    distance: 80,
                                    cost: 250,
                                    reviewCount: 55,
                                    image2: "img/stonia2.jpg",
                                    image3: "img/stonia3.jpg"),
                                key: Key('Slo Mo'))),
                        GestureDetector(
                            onTap: () {
                               if (myModel.datesChosen == "Click here") {
                                 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'dates',
                        );

                               });
                              } else if (myModel.roomtype == "Click here") {
                                setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'rooms',
                        );

                               });
                              } else {
                                showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  builder: (context, scrollController) =>
                                      Container(
                                          decoration: BoxDecoration(
                                              color: colorStyles[
                                                  'greyBackground']),
                                          height: 340,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 20),
                                                    child: Text(
                                                        "Available Room types",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                        ))),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 5),
                                                    child: Text(
                                                        "Please Select your prefered room of choice",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'Montserrat',
                                                        ))),
                                                Spacer(),
                                                Container(
                                                    child: ParallaxPageView(
                                                  viewportFraction: 0.6,
                                                  height: 250,
                                                  data: mountsoche,
                                                  onCardTap: (hotel) {
                                                    Navigator.of(context).push(
                                                      PageRouteBuilder<void>(
                                                        pageBuilder: (BuildContext
                                                                context,
                                                            Animation<double>
                                                                animation,
                                                            Animation<double>
                                                                secondaryAnimation) {
                                                          return AnimatedBuilder(
                                                              animation:
                                                                  animation,
                                                              builder: (BuildContext
                                                                      context,
                                                                  Widget
                                                                      child) {
                                                                return DetailScreen(
                                                                    heroTag:
                                                                        "${hotel.cardTitle()}",
                                                                    imageAsset:
                                                                        hotel
                                                                            .cardImageAsset(),
                                                                    description:
                                                                        hotel
                                                                            .cardDescription(),
                                                                    location: hotel
                                                                        .cardLocation(),
                                                                    hotel_name:
                                                                        hotel
                                                                            .cardHotelName());
                                                              });
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ))
                                              ])),
                                );
                              }

                              /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(heroTag: "hbkkkbkkn      ",
                                imageAsset: 'assets/images/detail1.jpg')),
            );
    */
                            },
                            child: ShowUpAnimation(
                                delayStart: Duration(seconds: 0),
                                animationDuration: Duration(seconds: 1),
                                child: Result(
                                  name: "Mount Soche",
                                  image: "assets/images/mount_soche.jpg",
                                  priceHead: "Price Range",
                                  priceRange: "\$150 - \$200",
                                  location: "Blantyre City",
                                  lat: -15.783527,
                                  long: 35.006177,
                                  distance: 375,
                                  image2: "img/soche2.jpg",
                                  image3: "img/soche3.jpg",
                                  cost: 150,
                                  reviewCount: 93,
                                ),
                                key: Key('Slo Mo'))),
                        GestureDetector(
                            onTap: () {
                               if (myModel.datesChosen == "Click here") {
                                 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'dates',
                        );

                               });
                              } else if (myModel.roomtype == "Click here") {
                                setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'rooms',
                        );

                               });
                              } else {
                                showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  builder: (context, scrollController) =>
                                      Container(
                                          decoration: BoxDecoration(
                                              color: colorStyles[
                                                  'greyBackground']),
                                          height: 340,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 20),
                                                    child: Text(
                                                        "Available Room types",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                        ))),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 5),
                                                    child: Text(
                                                        "Please Select your prefered room of choice",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'Montserrat',
                                                        ))),
                                                Spacer(),
                                                Container(
                                                    child: ParallaxPageView(
                                                  viewportFraction: 0.6,
                                                  height: 250,
                                                  data: mzuzu,
                                                  onCardTap: (hotel) {
                                                    Navigator.of(context).push(
                                                      PageRouteBuilder<void>(
                                                        pageBuilder: (BuildContext
                                                                context,
                                                            Animation<double>
                                                                animation,
                                                            Animation<double>
                                                                secondaryAnimation) {
                                                          return AnimatedBuilder(
                                                              animation:
                                                                  animation,
                                                              builder: (BuildContext
                                                                      context,
                                                                  Widget
                                                                      child) {
                                                                return DetailScreen(
                                                                    heroTag:
                                                                        "${hotel.cardTitle()}",
                                                                    imageAsset:
                                                                        hotel
                                                                            .cardImageAsset(),
                                                                    description:
                                                                        hotel
                                                                            .cardDescription(),
                                                                    location: hotel
                                                                        .cardLocation(),
                                                                    hotel_name:
                                                                        hotel
                                                                            .cardHotelName());
                                                              });
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ))
                                              ])),
                                );
                              }

                              /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(heroTag: "hbkkkbkkn      ",
                                imageAsset: 'assets/images/detail1.jpg')),
            );
    */
                            },
                            child: ShowUpAnimation(
                                delayStart: Duration(seconds: 0),
                                animationDuration: Duration(seconds: 1),
                                child: Result(
                                    name: "Sunbird Mzuzu",
                                    image: "img/mzuzu.jpg",
                                    priceHead: "Price Range",
                                    priceRange: "\$150 - \$200",
                                    location: "Mzuzu City",
                                    distance: 500,
                                    lat: -11.467229,
                                    long: 34.023068,
                                    cost: 150,
                                    reviewCount: 93,
                                    image2: "img/mzuzu2.jpg",
                                    image3: "img/mzuzu3.jpg"),
                                key: Key('Slo Mo'))),
                        GestureDetector(
                            onTap: () {
                               if (myModel.datesChosen == "Click here") {
                                 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'dates',
                        );

                               });
                              } else if (myModel.roomtype == "Click here") {
                                setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'rooms',
                        );

                               });
                              } else {
                                showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  builder: (context, scrollController) =>
                                      Container(
                                          decoration: BoxDecoration(
                                              color: colorStyles[
                                                  'greyBackground']),
                                          height: 340,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 20),
                                                    child: Text(
                                                        "Available Room types",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                        ))),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 5),
                                                    child: Text(
                                                        "Please Select your prefered room of choice",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'Montserrat',
                                                        ))),
                                                Spacer(),
                                                Container(
                                                    child: ParallaxPageView(
                                                  viewportFraction: 0.6,
                                                  height: 250,
                                                  data: lilongwe,
                                                  onCardTap: (hotel) {
                                                    Navigator.of(context).push(
                                                      PageRouteBuilder<void>(
                                                        pageBuilder: (BuildContext
                                                                context,
                                                            Animation<double>
                                                                animation,
                                                            Animation<double>
                                                                secondaryAnimation) {
                                                          return AnimatedBuilder(
                                                              animation:
                                                                  animation,
                                                              builder: (BuildContext
                                                                      context,
                                                                  Widget
                                                                      child) {
                                                                return DetailScreen(
                                                                    heroTag:
                                                                        "${hotel.cardTitle()}",
                                                                    imageAsset:
                                                                        hotel
                                                                            .cardImageAsset(),
                                                                    description:
                                                                        hotel
                                                                            .cardDescription(),
                                                                    location: hotel
                                                                        .cardLocation(),
                                                                    hotel_name:
                                                                        hotel
                                                                            .cardHotelName());
                                                              });
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ))
                                              ])),
                                );
                              }

                              /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(heroTag: "hbkkkbkkn      ",
                                imageAsset: 'assets/images/detail1.jpg')),
            );
    */
                            },
                            child: ShowUpAnimation(
                                delayStart: Duration(seconds: 0),
                                animationDuration: Duration(seconds: 1),
                                child: Result(
                                    name: "Sunbird Lilongwe",
                                    image: "img/lilongwe.jpg",
                                    priceHead: "Price Range",
                                    priceRange: "\$150 - \$200",
                                    location: "Lilongwe City",
                                    distance: 20,
                                    lat: -13.983176,
                                    long: 33.765999,
                                    cost: 150,
                                    reviewCount: 93,
                                    image2: "img/lilongwe2.jpg",
                                    image3: "img/lilongwe3.jpg"),
                                key: Key('Slo Mo'))),
                        GestureDetector(
                            onTap: () {
                            if (myModel.datesChosen == "Click here") {
                                 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'dates',
                        );

                               });
                              } else if (myModel.roomtype == "Click here") {
                                setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'rooms',
                        );

                               });
                              } else {
                                showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  builder: (context, scrollController) =>
                                      Container(
                                          decoration: BoxDecoration(
                                              color: colorStyles[
                                                  'greyBackground']),
                                          height: 340,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 20),
                                                    child: Text(
                                                        "Available Room types",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                        ))),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 5),
                                                    child: Text(
                                                        "Please Select your prefered room of choice",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'Montserrat',
                                                        ))),
                                                Spacer(),
                                                Container(
                                                    child: ParallaxPageView(
                                                  viewportFraction: 0.6,
                                                  height: 250,
                                                  data: kuchawe,
                                                  onCardTap: (hotel) {
                                                    Navigator.of(context).push(
                                                      PageRouteBuilder<void>(
                                                        pageBuilder: (BuildContext
                                                                context,
                                                            Animation<double>
                                                                animation,
                                                            Animation<double>
                                                                secondaryAnimation) {
                                                          return AnimatedBuilder(
                                                              animation:
                                                                  animation,
                                                              builder: (BuildContext
                                                                      context,
                                                                  Widget
                                                                      child) {
                                                                return DetailScreen(
                                                                    heroTag:
                                                                        "${hotel.cardTitle()}",
                                                                    imageAsset:
                                                                        hotel
                                                                            .cardImageAsset(),
                                                                    description:
                                                                        hotel
                                                                            .cardDescription(),
                                                                    location: hotel
                                                                        .cardLocation(),
                                                                    hotel_name:
                                                                        hotel
                                                                            .cardHotelName());
                                                              });
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ))
                                              ])),
                                );
                              }

                              /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(heroTag: "hbkkkbkkn      ",
                                imageAsset: 'assets/images/detail1.jpg')),
            );
    */
                            },
                            child: ShowUpAnimation(
                                delayStart: Duration(seconds: 0),
                                animationDuration: Duration(seconds: 1),
                                child: Result(
                                    name: "Sunbird Ku Chawe",
                                    image: "img/ku-chawe.jpg",
                                    priceHead: "Price Range",
                                    priceRange: "\$150 - \$200",
                                    location: "Near Chileka Int Airport",
                                    distance: 450,
                                    lat: -15.364441,
                                    long: 35.305246,
                                    cost: 150,
                                    reviewCount: 93,
                                    image2: "img/kuchawe2.jpg",
                                    image3: "img/kuchawe3.jpg"),
                                key: Key('Slo Mo'))),
                        GestureDetector(
                            onTap: () {
                              if (myModel.datesChosen == "Click here") {
                                 setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'dates',
                        );

                               });
                              } else if (myModel.roomtype == "Click here") {
                                setState(() {
                                  
                                    OverlayScreen().show(
                          context,
                          identifier: 'rooms',
                        );

                               });
                              } else {
                                showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  builder: (context, scrollController) =>
                                      Container(
                                          decoration: BoxDecoration(
                                              color: colorStyles[
                                                  'greyBackground']),
                                          height: 340,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 20),
                                                    child: Text(
                                                        "Available Room types",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                        ))),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 90, top: 5),
                                                    child: Text(
                                                        "Please Select your prefered room of choice",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'Montserrat',
                                                        ))),
                                                Spacer(),
                                                Container(
                                                    child: ParallaxPageView(
                                                  viewportFraction: 0.6,
                                                  height: 250,
                                                  data: nkopola,
                                                  onCardTap: (hotel) {
                                                    Navigator.of(context).push(
                                                      PageRouteBuilder<void>(
                                                        pageBuilder: (BuildContext
                                                                context,
                                                            Animation<double>
                                                                animation,
                                                            Animation<double>
                                                                secondaryAnimation) {
                                                          return AnimatedBuilder(
                                                              animation:
                                                                  animation,
                                                              builder: (BuildContext
                                                                      context,
                                                                  Widget
                                                                      child) {
                                                                return DetailScreen(
                                                                    heroTag:
                                                                        "${hotel.cardTitle()}",
                                                                    imageAsset:
                                                                        hotel
                                                                            .cardImageAsset(),
                                                                    description:
                                                                        hotel
                                                                            .cardDescription(),
                                                                    location: hotel
                                                                        .cardLocation(),
                                                                    hotel_name:
                                                                        hotel
                                                                            .cardHotelName());
                                                              });
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ))
                                              ])),
                                );
                              }

                              /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(heroTag: "hbkkkbkkn      ",
                                imageAsset: 'assets/images/detail1.jpg')),
            );
    */
                            },
                            child: ShowUpAnimation(
                                delayStart: Duration(seconds: 0),
                                animationDuration: Duration(seconds: 1),
                                child: Result(
                                    name: "Sunbird Nkopola",
                                    image: "img/nkopola.jpg",
                                    priceHead: "Price Range",
                                    priceRange: "\$150 - \$200",
                                    location: "Lake Malawi",
                                    distance: 450,
                                    lat: -14.316754,
                                    long: 35.144563,
                                    cost: 150,
                                    reviewCount: 93,
                                    image2: "img/nko2.jpg",
                                    image3: "img/nko3.jpg"),
                                key: Key('Slo Mo'))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
          /*
       Container(
         width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          color:Colors.white,

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


    

     ])
       )*/
        }));
  }

  @override
  bool get wantKeepAlive => true;
}
