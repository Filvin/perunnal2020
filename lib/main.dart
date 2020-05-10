import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:bbc1/screens/presudenthi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Dashboard(),
        routes: <String, WidgetBuilder>{
          // Set named routes
          PresudenthiPage.routeName: (BuildContext context) => PresudenthiPage(),
        }
    );
  }
}
