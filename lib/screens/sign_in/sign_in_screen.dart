import 'package:flutter/material.dart';

//import 'components/body.dart';
import 'package:checkbox/screens/sign_in/components/body.dart';

import 'package:checkbox/size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sign In",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
