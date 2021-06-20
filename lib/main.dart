import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/fist.png'),
                  radius: 50.0,
                  backgroundColor: Colors.yellow,
                ),
                Text(
                  '김혁동',
                  style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 40,
                      color: Colors.blueGrey[900],
                      fontFamily: 'NanumPenScript'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '김혁동의 개발일지',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontFamily: 'SourceSansPro'),
                ),
                SizedBox(
                  width: 150,
                  height: 20,
                  child: Divider(
                    color: Colors.blueGrey[900],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.mood,
                      size: 30,
                      color: Colors.blueGrey[900],
                    ),
                    title: Text(
                      'WE CAN DO IT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontFamily: 'SourceSansPro'),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.blueGrey[900],
                    ),
                    title: Text(
                      'youtuberimitatingman.tistory.com',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontFamily: 'SourceSansPro'),
                    ),
                  ),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.blueGrey[900],
                  ),
                  height: 30,
                ),
                QrImage(
                  data: 'youtuberimitatingman.tistory.com',
                  size: 150,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
