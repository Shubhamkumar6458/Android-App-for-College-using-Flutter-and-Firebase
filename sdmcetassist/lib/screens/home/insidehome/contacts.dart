import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideContact/administrationContact.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideContact/emergencyContact.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideContact/hodContact.dart';

class Contacts extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<Contacts> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contacts"),
            bottom: menu(),
          ),
          body: TabBarView(
            children: [
              AdministrationContact(),
              HodContact(),
              EmergencyContact(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return TabBar(
      tabs: [
        Tab(
          child: Flexible(
              child: Text(
            "ADMIN",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.account_balance),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "HOD",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "Emergency",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.local_hospital),
        ),
      ],
    );
  }
}
