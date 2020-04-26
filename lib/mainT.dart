//import 'package:covid/login.dart';
import 'package:flutter/material.dart';
import 'LoginT.dart';
import 'SignupT.dart';
import 'main.dart';
void mainT() => runApp(MyAppT());

class MyAppT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'TRACK-O-METER',
              style: TextStyle(fontSize: 20.0),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[900],
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background1.jpg'),
                  fit: BoxFit.cover),
            ),
            child: button(),
          ),
        ),
      ),
    );
  }
}

class button extends StatefulWidget {
  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(
        'வணக்கம், பயனர்\n',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue[100],
        ),
      ),SizedBox(height: 10.0),
      Text('புதிய பயனர்?', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue[100],),),
      Text("ஒரு கணக்கை உருவாக்க:",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue[100],),),

      SizedBox(height: 10.0),
      RaisedButton(
        child: Text(
          'பதிவுபெறுதல்',
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignupT()));
        },
      ),
      SizedBox(height: 30.0),
      Text('தற்போதுள்ள பயனரா?', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue[100],),),
      Text("உள்நுழைய:",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue[100],),),

      SizedBox(height: 10.0),
      RaisedButton(
        child: Text(
          'உள்நுழைய',
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginT()));
        },
      ),
      Container(

        child: Column(
          children: <Widget>[
            SizedBox(width: 0.0,height: 40.0,),
            Text("TO CHANGE APP LANGUAGE:",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue[100],),),

            RaisedButton(
              child: Text("English",style: TextStyle(fontSize: 20.0,),),

              onPressed: (){
                this.setState((){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyApp()));
                });
              },
            ),
          ],
        ),

      ),
        ],
      ),
    );
  }
}