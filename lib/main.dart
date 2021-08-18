import 'package:flutter/material.dart';
import 'package:np_15_dependency_injection/dependency_injection.dart';
import 'package:np_15_dependency_injection/screen/one.dart';

void main() {
  setupInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dependency Injection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: One(),
    );
  }
}
