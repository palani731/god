//import 'dart:convert';
import 'DashboardT.dart';
import 'package:flutter/material.dart';

//import 'package:frontend1db/auth.dart';
//import 'KnowyourselfT.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:intl/intl.dart';
//import 'package:http/http.dart';



class TemperatureT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FullScreenPage(),
    );
  }
}

class FullScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'வெப்பநிலை விவரங்கள்',
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      // resizeToAvoidBottomPadding: false,
      body: Container(
        //padding: EdgeInsets.only(bottom: 80.0),
        color: Colors.blueGrey[700],
        child: Stack(
          children: <Widget>[
//SizedBox(width: 200.0,),
            Container(padding:EdgeInsets.only(top:200.0,left: 60.0),child: SvgPicture.asset('assets/bg5.svg',height: 200.0,)),
            Details(),

          ],
        ),

      ),
    );
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //calculate

    return
      Column(
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    //bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(40.0),
                  )
              ),
              padding: EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 50.0),
              child: Text(
                "97 : 29 April 2020 at 12:30:31 UTC+5:30\n98 : 26 April 2020 at 11:12:32 UTC+5:30\m102 : 25 April 2020 at 09:05:45 UTC+5:30\n104 : 24 April 2020 at 02:06:30 UTC+5:30\n107 : 28 April 2020 at 12:12:20 UTC+5:30\n103 : 27 April 2020 at 07:08:50 UTC+5:30\n97 : 30 April 2020 at 03:04:20 UTC+5:30",


                style: TextStyle(color: Colors.red[900], fontSize: 20.0),),
            ),
          ),
          RaisedButton(
            child: Text(
              'விரிவான அறிக்கை',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                // bottomRight: Radius.circular(20.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DashboardT()));
            },
          ),
        ],
      );
  }

}



