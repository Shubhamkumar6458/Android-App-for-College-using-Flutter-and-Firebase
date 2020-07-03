import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmcetassist/screens/authenticate/authenticate.dart';
import 'package:sdmcetassist/screens/home/home.dart';
import 'package:sdmcetassist/models/user.dart';

class Wrapper extends StatelessWidget {
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
