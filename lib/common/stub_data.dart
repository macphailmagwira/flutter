import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_search/parallax_sliding_card.dart';


class StubData {
  static final StubData _singleton = StubData._internal();

  factory StubData() {
    return _singleton;
  }

  StubData._internal();

  List<String> get hotelCategories =>
      ["All", "Hotels", "Resorts"];

  List<capitalCard> get capital => [
        capitalCard(
          title: "Deluxe Single Room",
          subTitle: "Guests: 2",
          imageAsset: "img/a1.jpg",
          description: "This double room features air conditioning a minibar and a kettle",
          location: "City Center, Lilongwe",
          hotel_name: "Sunbird Capital Hotel"
        ),
        capitalCard(
          title: "Studio Room",
          subTitle: "Guest: 2",
          imageAsset: "img/a2.jpg",
          description: "This double room features a electric kettle, soundproofing and tile/marble floor",
          location: "City Center, Lilongwe",
          hotel_name: "Sunbird Capital Hotel"
        ),
        capitalCard(
          title: "Presidential Room",
          subTitle: "Guest: 4",
          imageAsset: "img/a3.jpg",
          description: "This Presidential room can can hold four guests and  has two large beds",
          location: "City Center, Lilongwe",
          hotel_name: "Sunbird Capital Hotel"
        ),
        capitalCard(
          title: "Supreme Double Room",
          subTitle: "Guest: 4",
          imageAsset: "img/a4.jpg",
          description: "This double room features a electric kettle, soundproofing and tile/marble floor",
          location: "City Center, Lilongwe",
          hotel_name: "Sunbird Capital Hotel"
        ),
      ];




  List<livingstoniaCard> get livingstonia => [
        livingstoniaCard(
          title: "Chalet Room",
          subTitle: "Guests: 2",
          imageAsset: "img/chalet.jpg",
          description: "This double room features a soundproofing, seating area and sofa",
          location: "Lake Malawi, Salima",
          hotel_name: "Sunbird Livingstonia"
        ),
        livingstoniaCard(
          title: "Standard Room",
          subTitle: "Guest: 2",
          imageAsset: "img/standard_livingstonia.jpg",
          description: "This double room has air conditioning, soundproofing and an electric kettle ",
          location: "Lake Malawi, Salima",
           hotel_name: "Sunbird Livingstonia"
        ),
       livingstoniaCard(
          title: "Deluxe Room",
          subTitle: "Guest: 2",
          imageAsset: "img/Livingstonia-deluxe-room.jpg",
          description: "This double room has a tile/marble floor, and a double bed",
          location: "Lake Malawi, Salima",
           hotel_name: "Sunbird Livingstonia"
        ),
       
      ];
      
  List<mountsocheCard> get mountsoche=> [
         mountsocheCard(
          title: "Deluxe Room",
          subTitle: "Guests: 2",
          imageAsset: "img/mount-soche-deluxe-room.jpg",
          description: "This air conditoned room offering a view features a flat-screen TV, a minibar and  a private bathroom.",
          location: "Glyn Jones road, Blantyre",
           hotel_name: "Sunbird Mount Soche"
        ),
         mountsocheCard(
          title: "Executive Suite Room",
          subTitle: "Guest: 4",
          imageAsset: "img/mount-soche-suite-room.jpg",
          description: "This double room features a electric kettle, sound proofing ",
          location: "Glyn Jones road, Blantyre",
          hotel_name: "Sunbird Mount Soche"
        ),
        mountsocheCard(
          title: "Studio Room",
          subTitle: "Guest: 2",
          imageAsset: "img/mount-soche-studio-room.jpg",
          description: "This double room features a electric kettle, soundproofng and tile/marble floor",
          location: "Glyn Jones road, Blantyre",
          hotel_name: "Sunbird Mount Soche"
        ),
       
      ];

      List<mzuzuCard> get mzuzu => [
        mzuzuCard(
          title: "Suite Room",
          subTitle: "Guests: 2",
          imageAsset: "img/mzuzu-suite-room.jpg",
          description: "This suite features a patio, seating area and tile/marble floor",
          location: "Mzuzu City",
          hotel_name: "Sunbird Mzuzu"
        ),
        mzuzuCard(
          title: "Superior Twin Room",
          subTitle: "Guest: 2",
          imageAsset: "img/mzuzu-superior-twin-room.jpg",
          description: "This double room has a satellite TV, air conditioning and seating area",
          location: "Mzuzu City",
                    hotel_name: "Sunbird Mzuzu"

        ),
        mzuzuCard(
          title: "Superior Double Room",
          subTitle: "Guest: 2",
          imageAsset: "img/mzuzu-superior-room.jpg",
          description: "This double room features air conditioning, seating area and sofa",
          location: "Mzuzu City",
                    hotel_name: "Sunbird Mzuzu"

        ),
        
      ];

      List<lilongweCard> get lilongwe => [
        lilongweCard(
          title: "Chalet Room",
          subTitle: "Guests: 2",
          imageAsset: "img/lilongwe-deluxe-chalet-room.jpg",
          description: "This double room features a soundproofing, seating area and sofa",
          location: "Lilongwe City",
                    hotel_name: "Sunbird Lilongwe"

        ),
        lilongweCard(
          title: "Studio Room",
          subTitle: "Guest: 2",
          imageAsset: "img/lilongwe-deluxe-studio-room.jpg",
          description: "This double room features an electric kettle, soundproofing and tile/marble floor",
          location: "Lilongwe City",
                              hotel_name: "Sunbird Lilongwe"

        
        ),
        lilongweCard(
          title: "Deluxe Room",
          subTitle: "Guest: 2",
          imageAsset: "img/lilongwe-deluxe-room.jpg",
          description: "This double room has a tile/marble floor and double bed",
          location: "Lilongwe City",
                              hotel_name: "Sunbird Lilongwe"

        ),
        
      ];


      List<kuchaweCard> get kuchawe => [
        kuchaweCard(
          title: "Deluxe Room",
          subTitle: "Guests: 2",
          imageAsset: "img/kuchawe-deluxe-room.jpg",
          description: "This double room features a soundproofing, seating area and sofa",
          location: "Near Chileka Int Airport",
                              hotel_name: "Sunbird Ku chawe"

        ),
        kuchaweCard(
          title: "Hillside Suite Room",
          subTitle: "Guest: 2",
          imageAsset: "img/kuchawe-hillside-deluxe-room.jpg",
          description: "This double room features an electric kettle, soundproofing and tile/marble floor",
          location: "Near Chileka Int Airport",
             hotel_name: "Sunbird Ku chawe"

        ),
        kuchaweCard(
          title: "Hillside Deluxe Room",
          subTitle: "Guest: 2",
          imageAsset: "img/kuchawe-hillside-deluxe-room-2.jpg",
          description: "This double room has a satellite TV, air conditioning and seating area",
          location: "Near Chileka Int Airport",
             hotel_name: "Sunbird Ku chawe"
        ),
        kuchaweCard(
          title: "Superior Deluxe Room",
          subTitle: "Guest: 2",
          imageAsset: "img/kuchawe-studio-room.jpg",
          description: "This double room has a tlle/marble floor, electric kettle and sofa",
          location: "Near Chileka Int Airport",
             hotel_name: "Sunbird Ku chawe"
        )
        
      ];


List<nkopolaCard> get nkopola => [
         nkopolaCard(
          title: "Lakeside Suite",
          subTitle: "Guests: 2",
          imageAsset: "img/lakeside-suite.jpg",
          description: "Rooms are ensuite, air-conditioned, have digital satellite television, international direct dialing, Wi-Fi and 220 volts power points(British standard).",
          location: "Lake Malawi",
             hotel_name: "Sunbird Nkopola"
        ),
         nkopolaCard(
          title: "Lakeside Studio",
          subTitle: "Guest: 2",
          imageAsset: "img/lakeside-studio.jpg",
          description: "Rooms are ensuite, air-conditioned, have digital satellite television, international direct dialing, Wi-Fi and 220 volts power points(British standard)",
          location: "Lake Malawi",
             hotel_name: "Sunbird Nkopola"
        ),
         
      ];




  

  List<Widget> get facilities => [
        SvgPicture.asset(
          "img/ic_room_service_6.svg",
          fit: BoxFit.none,
        ),
        SvgPicture.asset(
          "img/ic_room_service_2.svg",
          fit: BoxFit.none,
        ),
        SvgPicture.asset(
          "img/ic_room_service_1.svg",
          fit: BoxFit.none,
        ),
        SvgPicture.asset(
          "img/ic_room_service_4.svg",
          fit: BoxFit.none,
        ),
        SvgPicture.asset(
          "img/ic_room_service_3.svg",
          fit: BoxFit.none,
        ),
        SvgPicture.asset(
          "img/ic_room_service_5.svg",
          fit: BoxFit.none,
        ),
      ];
}

class capitalCard implements ISlidingCard {
  final String title;
  final String subTitle;
  final String imageAsset;
  final String description;
  final String location;
  final String hotel_name;
  capitalCard({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.description,
    this.location,
    this.hotel_name
  });

  @override
  String cardTitle() => title;

  @override
  String cardSubTitle() => subTitle;

  @override
  String cardImageAsset() => imageAsset;


  @override
  String cardDescription() => description;

@override
  String cardLocation() => location;

  
@override
  String cardHotelName() => hotel_name;

}


class livingstoniaCard implements ISlidingCard {
  final String title;
  final String subTitle;
  final String imageAsset;
  final String description;
  final String location;
    final String hotel_name;

   livingstoniaCard({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.description,
    this.location,
        this.hotel_name

  });

  @override
  String cardTitle() => title;

  @override
  String cardSubTitle() => subTitle;

  @override
  String cardImageAsset() => imageAsset;


  @override
  String cardDescription() => description;

@override
  String cardLocation() => location;
    
@override
  String cardHotelName() => hotel_name;

}


class mountsocheCard implements ISlidingCard {
  final String title;
  final String subTitle;
  final String imageAsset;
  final String description;
  final String location;
    final String hotel_name;

   mountsocheCard({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.description,
    this.location,
        this.hotel_name

  });

  @override
  String cardTitle() => title;

  @override
  String cardSubTitle() => subTitle;

  @override
  String cardImageAsset() => imageAsset;


  @override
  String cardDescription() => description;

@override
  String cardLocation() => location;
    
@override
  String cardHotelName() => hotel_name;

}

class mzuzuCard implements ISlidingCard {
  final String title;
  final String subTitle;
  final String imageAsset;
  final String description;
  final String location;
    final String hotel_name;

   mzuzuCard({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.description,
    this.location,
        this.hotel_name

  });

  @override
  String cardTitle() => title;

  @override
  String cardSubTitle() => subTitle;

  @override
  String cardImageAsset() => imageAsset;


  @override
  String cardDescription() => description;

@override
  String cardLocation() => location;

    
@override
  String cardHotelName() => hotel_name;

}

class lilongweCard implements ISlidingCard {
  final String title;
  final String subTitle;
  final String imageAsset;
  final String description;
  final String location;
    final String hotel_name;

   lilongweCard({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.description,
    this.location,
        this.hotel_name

  });

  @override
  String cardTitle() => title;

  @override
  String cardSubTitle() => subTitle;

  @override
  String cardImageAsset() => imageAsset;


  @override
  String cardDescription() => description;

@override
  String cardLocation() => location;
    
@override
  String cardHotelName() => hotel_name;

}


class kuchaweCard implements ISlidingCard {
  final String title;
  final String subTitle;
  final String imageAsset;
  final String description;
  final String location;
    final String hotel_name;

   kuchaweCard({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.description,
    this.location,
        this.hotel_name

  });

  @override
  String cardTitle() => title;

  @override
  String cardSubTitle() => subTitle;

  @override
  String cardImageAsset() => imageAsset;


  @override
  String cardDescription() => description;

@override
  String cardLocation() => location;

    
@override
  String cardHotelName() => hotel_name;

}




class nkopolaCard implements ISlidingCard {
  final String title;
  final String subTitle;
  final String imageAsset;
  final String description;
  final String location;
    final String hotel_name;

   nkopolaCard({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.description,
    this.location,
        this.hotel_name

  });

  @override
  String cardTitle() => title;

  @override
  String cardSubTitle() => subTitle;

  @override
  String cardImageAsset() => imageAsset;


  @override
  String cardDescription() => description;

@override
  String cardLocation() => location;

    
@override
  String cardHotelName() => hotel_name;

}



