import 'package:flutter/material.dart';

class AppNavigator {
  ///push
  ///
  ///* eg: AppNavigator.push(context, <ROUTE_NAME>);
  ///this work as the default push navigation in flutter
  static void push(BuildContext context, dynamic route) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => route));

  ///pushReplacement
  ///
  ///* eg: AppNavigator.push(context, <ROUTE_NAME>);
  ///this work as the default pushReplacement navigation in flutter
  static void pushReplacement(BuildContext context, dynamic route) =>
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => route));
}
