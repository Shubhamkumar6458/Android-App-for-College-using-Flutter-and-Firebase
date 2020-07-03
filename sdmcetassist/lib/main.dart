import 'package:provider/provider.dart';
import 'package:sdmcetassist/services/auth.dart';
import 'package:sdmcetassist/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/models/user.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String textValue = 'Hello';
  FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

  @override
  void initState() {
    firebaseMessaging.configure(onLaunch: (Map<String, dynamic> msg) {
      print("called on launch");
    }, onResume: (Map<String, dynamic> msg) {
      print("called on resume");
    }, onMessage: (Map<String, dynamic> msg) {
      print("called on message");
    });
    firebaseMessaging
        .requestNotificationPermissions(const IosNotificationSettings(
      sound: true,
      alert: true,
      badge: true,
    ));
    firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings setting) {
      print(' Ios setting Registered');
    });
    firebaseMessaging.getToken().then((token) {
      update(token);
    });
    super.initState();
  }

  update(String token) {
    print(token);
    textValue = token;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
