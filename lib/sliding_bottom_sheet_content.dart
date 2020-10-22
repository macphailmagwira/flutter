import 'package:flutter/material.dart';
import 'package:hotel_search/common/icons.dart';
import 'package:hotel_search/common/stub_data.dart';
import 'package:hotel_search/common/theme.dart';
import 'package:hotel_search/parallax_page_view.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'dart:convert';
import 'package:hotel_search/home_page.dart';
import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';




class BottomSheetContent extends StatefulWidget {
  final AnimationController controller;
  String description;
   String title;
  String location;
   String hotel_name;
    String chosenDates;
        String mainimage;

 

 




  BottomSheetContent({this.controller, this.description, this.title, this.location, this.hotel_name,this.mainimage});


@override
 BottomSheetContentState createState() => BottomSheetContentState(
      controller: controller ,description: description,  title :title, location :location, hotel_name : hotel_name ,mainimage: mainimage );



}

class BottomSheetContentState extends State<BottomSheetContent>
     {

  final AnimationController controller;

   String description;
  String title; 
   String location;
  String hotel_name;
   String chosenDates;
        String checkin ="Click here";
     String checkout = " Click here";
       String mainimage;










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
        10,
        11,
        12
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
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42,
        43,
        44,
        45,
        46,
        47,
        48,
        49,
        50,
        51,
        52,
        53,
        54,
        55,
        56,
        57,
        58,
        59,
        60
    ],
    [
        "AM",
        "PM"
    ]
]
    ''';

    static const PickerData1= '''
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
        10,
        11,
        12
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
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42,
        43,
        44,
        45,
        46,
        47,
        48,
        49,
        50,
        51,
        52,
        53,
        54,
        55,
        56,
        57,
        58,
        59,
        60
    ],
    [
        "AM",
        "PM"
    ]
]
    ''';
BottomSheetContentState({this.controller, this.description, this.title, this.location, this.hotel_name,this.mainimage});

  @override
  Widget build(BuildContext context) {
    print("C:UsersHomeDesktopHotel-Search-UIlibsliding_bottom_sheet_content.dart==================================$title");
    print("C:UsersHomeDesktopHotel-Search-UIlibsliding_bottom_sheet_content.dart==================================$hotel_name");
    final themeData = HotelConceptThemeProvider.get();
    final double topPaddingMax = 44;
    final double topPaddingMin = MediaQuery.of(context).padding.top;
    double topMarginAnimatedValue = (1 - controller.value) * topPaddingMax * 2;
    double topMarginUpdatedValue = topMarginAnimatedValue <= topPaddingMin ? topPaddingMin : topMarginAnimatedValue;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      child: Padding(
        padding:  EdgeInsets.only(top: topMarginUpdatedValue),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ScrollConfiguration(
              behavior: OverScrollBehavior(),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "$title",
                                style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 20,
  ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      HotelBookingConcept.ic_star,
                                      size: 15,
                                      color: themeData.disabledColor,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: themeData.disabledColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Icon(
                                HotelBookingConcept.ic_location,
                                size: 20,
                                color: themeData.textTheme.display3.color,
                              ),
                              const SizedBox(width: 5),
                              Text("$location" ,style: TextStyle(
    fontSize: 13,
    fontFamily: 'Montserrat',
  ),),
                            ],
                          ),
                          const SizedBox(height: 18),
                          Text(
                            "DETAILS",
                            style: TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "$description",
                            style: TextStyle(
    fontSize: 13,
    fontFamily: 'Montserrat',
  ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "FACILITIES",
                            style: TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: StubData().facilities,
                          ),
                          const SizedBox(height: 32),
                          Consumer<MyModel>(
                              builder: (context, myModel, children) {
                                
                        
         
         myModel.updatedata5(title);print("==============================model set page $title");
                  myModel.updatedata6(hotel_name);  print("==============================model set page $hotel_name");
                                    myModel.updatedata7(mainimage);
                                    print ("-----------------------------------------------------------------------------------------------------------------------------------"+"$mainimage");
                                      myModel.updatedata8(location);
         



    

                          

                                return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                             
                             
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "CHECK IN TIME",
                                    style: TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 8),
                                 
                                 GestureDetector(
                                   onTap: (){
                                  

                         


                                  new Picker(
        adapter: PickerDataAdapter<String>(pickerdata: new JsonDecoder().convert(PickerData2), isArray: true),
        hideHeader: true,
        title: new Text("Please Select"),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
      var messedup2 = picker.getSelectedValues()[0] + ":" + picker.getSelectedValues()[1] + " " + picker.getSelectedValues()[2];

       setState(() {
         checkin = messedup2;
         
          myModel.updatedata3(checkin);



       });  



        }
    ).showDialog(context);
                                  



                                   },
                                 
                                  child:Text(
                                    "$checkin",
                                    style: TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
  ),
                                  )),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "CHECK OUT TIME",
                                    style: TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 8),
                                  GestureDetector(
                                   onTap: (){

                                       new Picker(
        adapter: PickerDataAdapter<String>(pickerdata: new JsonDecoder().convert(PickerData2), isArray: true),
        hideHeader: true,
        title: new Text(" Please Select"),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
       var messedup2 = picker.getSelectedValues()[0] + ":" +  picker.getSelectedValues()[1] + " " +  picker.getSelectedValues()[2];

       setState(() {
         checkout= messedup2;
          myModel.updatedata4(checkout);
       });  



        }
    ).showDialog(context);



                                   },
                                 
                                  child:Text(
                                    "$checkout",
                                     style: TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
  )
                                  ),
                                  )],
                              ),
                            ],
                          );}),
                          const SizedBox(height: 68),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
