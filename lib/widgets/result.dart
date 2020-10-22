import 'package:flutter/material.dart';
import 'package:hotel_search/styles/colors.dart';
import 'package:hotel_search/styles/texts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';
import 'dart:math' show cos, sqrt, asin;
import 'package:hotel_search/parallax_page_view.dart';
import 'package:hotel_search/sliding_bottom_sheet.dart';
import 'package:page_indicator/page_indicator.dart';
import 'dart:async';








class Result extends StatefulWidget{ 
  Result({
    this.name,
    this.image,
    this.location,
    this.distance,
    this.cost,
    this.rating,
    this.reviewCount,
     this.priceHead,
      this.priceRange,
      this.long,
      this.lat,
      this.image2,
      this.image3
  });

  final String name;
  final String image;
    final String image2;
  final String image3;

  final String location;
    final String priceHead;
        final String priceRange;
       double  long;
        double lat;


  final int distance;
  final int cost;
  final int rating;

  final int reviewCount;

 ResultState createState() => ResultState (
   name:name, image:image, image2:image2, image3:image3, location:location,distance:distance,cost:cost,rating:rating,reviewCount:reviewCount,priceHead:priceHead,priceRange:priceRange,lat:lat,long:long );


}
  

class ResultState extends State<Result>{ 
  int _currentPage = 0;
PageController _pageController = PageController(
  initialPage: 0,
);



@override
void initState() {
  super.initState();


  
    Future.delayed(Duration(milliseconds: 7000)).then((v) {
    

  Timer.periodic(Duration(seconds: 10), (Timer timer) {
    if (_currentPage < 2) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }



    _pageController.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 1800),
      curve: Curves.easeIn,
    );
  });


    
    });


}


    final String name;
  final String image;
    final String image2;
      final String image3;


  final String location;
    final String priceHead;
        final String priceRange;
       double  long;
        double lat;
          final int reviewCount;
             String distancecalc = " ";
           



  final int distance;
  final int cost;
  final int rating;

 ResultState({
    this.name,
    this.image,
    this.location,
    this.distance,
    this.cost,
    this.rating,
    this.reviewCount,
     this.priceHead,
      this.priceRange,
      this.long,
      this.lat,
      this.image2,
      this.image3
  });


  

  @override
  Widget build(BuildContext context) {

               getdistance(lat,long);

                 final _imageUrls = [ image.toString()  ];


    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(

         decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0))),
        height: 270,
        child: Card(
          shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
          
          elevation: 0.3 
          ,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 7,
                 child: Container(
                  decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0))),
                    height: 200,
                    child:PageIndicatorContainer( 
                      
                      
                      align: IndicatorAlign.bottom,
                      length: 3,
                      indicatorSpace: 12.0,
                      padding: EdgeInsets.only(bottom: 10,),
                      indicatorColor: Colors.white,
                      indicatorSelectorColor: Colors.white,
                      shape: IndicatorShape.circle(size: 2),
                      child: ClipRRect(
     borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
    child:PageView(controller: _pageController,
                        children: <Widget>[
                          Image.asset(
                            image, 
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                           image2, // <- stubbed data
                            fit: BoxFit.cover,
                          ),
                         /* Image.asset(
                            image3, // <- stubbed data
                            fit: BoxFit.cover,
                          ),*/
                        ],
                      )),
                    ))),
            
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(
    color: Colors.black,
    fontFamily: 'Montserrat',
    fontSize: 15,
  ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                location,
                                style: TextStyle(
      color: Colors.grey[700],
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w600),
                              
                              ),
                              
                            ],
                          ),SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                            
                              Text( 
                                "$distancecalc",
                                style: textStyles['hotelInfo'],
                              )]),
                        ],
                      ),
                              Spacer(),

                              Container( padding: EdgeInsets.only(top:10), 
                         child:Column( 
                      
                        children: <Widget>[ 

                              Text(
                                priceHead.toString(),
                                style: textStyles['hotelInfo'],
                              ),
                              Text(
                                priceRange.toString(),
                                style:TextStyle(
      color: Colors.grey[700],
      fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.w600),
                              ),
                               SizedBox(height: 7),
                               Container( margin: EdgeInsets.only(bottom:5),
                                 width:95,
                                 height:20,
                               child:OutlineButton(
                onPressed: () {


                 MapUtils.openMap(lat,long);

                },
                child: Text("Get Directions", style: TextStyle(fontSize: 10),),
                borderSide: BorderSide(color: Color(0xff008d4b)),
                
              ))



                        ]

                         )
                         
                         
                         )




                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  
   getdistance(double a,double b) async{ 


 Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);


    

    print("===========================================================" + position.toString());

   // var distanceInMeters = await  GeolocatorPlatform.instance.distanceBetween( lat, long,position.latitude,position.longitude);


     // print(distanceInMeters.toString());

  

         print("===========================================================" + distancecalc.toString());

      if(mounted){
         setState(() {
           

                 distancecalc = calculateDistance(a, b, position.latitude, position.longitude).toStringAsPrecision(3) + " Km from you";


         });

      }




  
}  


   double calculateDistance(lat1, lon1, lat2, lon2){
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p)/2 + 
          c(lat1 * p) * c(lat2 * p) * 
          (1 - c((lon2 - lon1) * p))/2;
    return (12742 * asin(sqrt(a)) ) * 1.609344;
  }




  
}
class MapUtils {

  MapUtils._();

  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}