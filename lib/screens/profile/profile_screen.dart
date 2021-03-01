import 'package:flutter/material.dart';
import 'package:checkbox/components/navDrawer.dart';
import 'package:checkbox/components/sideAppbarIcons.dart';

import 'package:checkbox/size_config.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new NavDrawer(),
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        toolbarHeight: SizeConfig.screenHeight * 0.1,
        actions: sideIcons(),
      ),
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
