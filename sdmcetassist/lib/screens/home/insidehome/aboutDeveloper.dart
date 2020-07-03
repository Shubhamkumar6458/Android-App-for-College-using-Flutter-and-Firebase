import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideAboutDeveloper/chinfye.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideAboutDeveloper/gshetty.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideAboutDeveloper/nikhita.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideAboutDeveloper/shubham.dart';

class AboutDeveloper extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<AboutDeveloper>
    with SingleTickerProviderStateMixin {
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
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("About Developer"),
            bottom: menu(),
          ),
          body: TabBarView(
            children: [GShetty(), Shubham(), Chinfye(), Nikhita()],
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
            "Ganesh Shetty",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.code),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "Shubham Kumar",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.code),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "Chinmayee",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.code),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "Nikhita",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.code),
        ),
      ],
    );
  }
}
