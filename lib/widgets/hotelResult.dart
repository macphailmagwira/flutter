import 'package:flutter/material.dart';
import 'package:hotel_search/styles/colors.dart';

class StarRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 15,
      color: colorStyles['mainGreen'],
    );
  }
}

class HotelResult extends StatelessWidget {
  HotelResult({
    this.name,
    this.image,
    this.location,
    this.distance,
    this.cost,
    this.rating,
    this.reviewCount,
  });

  final String name;
  final String image;
  final String location;
  final int distance;
  final int cost;
  final int rating;

  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(15.0),
            topRight: const Radius.circular(15.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(15.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(15.0),
                    bottomRight: const Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                location,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              Icon(Icons.place,
                                  color: colorStyles['mainGreen'], size: 20),
                              Text(
                                distance.toString() + " km to city",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              StarRating(),
                              StarRating(),
                              StarRating(),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  reviewCount.toString() + " Reviews",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
