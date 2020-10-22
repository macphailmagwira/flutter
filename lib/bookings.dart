import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:hotel_search/model.dart';
import 'package:secure_random/secure_random.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookScreen extends StatefulWidget {
  @override
  book createState() => book();
}

class book extends State<BookScreen> with AutomaticKeepAliveClientMixin {
  Future<QuerySnapshot> data1;
  Future data2;
  Future data3;
  String user_email22;

 updatemail() async {
    SharedPreferences user_info = await SharedPreferences.getInstance();
    user_email22 = user_info.getString('user_email');

    print(
        "============================================================== after ================" +
            user_email22);
 
     var docSnapshot =  FirebaseFirestore.instance
        .collection('bookings')
        .where('customer', isEqualTo: user_email22.toString());

    var docSnapshot2 =
        docSnapshot.where('status2', isEqualTo: 'preparing').snapshots();

    return docSnapshot2;

  }

  @override
  void initState() {
    super.initState();

    data1 = updatemail();
  }

  String userId;
  var secureRandom = SecureRandom();
  checkPreparing() {
    var docSnapshot =  FirebaseFirestore.instance
        .collection('bookings')
        .where('customer', isEqualTo: user_email22.toString());

    var docSnapshot2 =
        docSnapshot.where('status2', isEqualTo: 'preparing').snapshots();

    return docSnapshot2;
  }

  checkCancelled() {
    var docSnapshot = FirebaseFirestore.instance
        .collection('bookings')
        .where('customer', isEqualTo: user_email22.toString());

    var docSnapshot2 =
        docSnapshot.where('status2', isEqualTo: 'cancelled').snapshots();

    return docSnapshot2;
  }

  checkPast() {
    var docSnapshot = FirebaseFirestore.instance
        .collection('bookings')
        .where('customer', isEqualTo: user_email22.toString());

    var docSnapshot2 =
        docSnapshot.where('status2', isEqualTo: 'past').snapshots();

    return docSnapshot2;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Color(0xff008d4b),
              labelStyle: TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
              tabs: [
                Tab(
                  text: "Upcoming",
                ),
                Tab(text: "Cancelled"),
                Tab(text: "Past"),
              ],
            ),
            title: Text('My Bookings',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                )),
          ),
          body: TabBarView(
            children: [
              Container(
                  color: Colors.grey[100],
                  child: FutureBuilder<QuerySnapshot>(
                      future: data1,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          if (snapshot.data.documents.isEmpty) {
                           
                          } else if (snapshot.data.documents.isNotEmpty) {
                           
                        }
                        return Container();
                      }})),
              
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
