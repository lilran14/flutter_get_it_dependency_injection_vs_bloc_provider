import 'dart:math';

import 'package:flutter/material.dart';

import 'package:np_15_dependency_injection/cubit/circle_cubit.dart';
import 'package:np_15_dependency_injection/cubit/rectangle_cubit.dart';
import 'package:np_15_dependency_injection/dependency_injection.dart';

class Three extends StatelessWidget {
  const Three({
    Key? key,
    required this.circleCubit,
  }) : super(key: key);

  final CircleCubit circleCubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Three"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Normal Bloc Provider - Circle",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            MaterialButton(
                onPressed: () {
                  double random = Random().nextInt(100).toDouble();
                  print("Radius random : $random");
                  circleCubit.setRadius(random);
                },
                child: Text("Change Radius"),
                color: Colors.amber,
                textColor: Colors.white),
            Text(
              "Get It Injection - Rectangle",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            MaterialButton(
                onPressed: () {
                  int random = Random().nextInt(100);
                  print("Width random 1: $random");
                  getIt<RectangleCubit>(instanceName: "rectangle1")
                      .setWidth(random);
                },
                child: Text("Change Width Rectangle 1"),
                color: Colors.amber,
                textColor: Colors.white),
            MaterialButton(
                onPressed: () {
                  int random = Random().nextInt(100);
                  print("Height random 1: $random");
                  getIt<RectangleCubit>(instanceName: "rectangle1")
                      .setHeight(random);
                },
                child: Text("Change Height Rectangle 1"),
                color: Colors.amber,
                textColor: Colors.white),
            MaterialButton(
                onPressed: () {
                  int random = Random().nextInt(100);
                  print("Width random 2: $random");
                  getIt<RectangleCubit>(instanceName: "rectangle2")
                      .setWidth(random);
                },
                child: Text("Change Width Rectangle 2"),
                color: Colors.amber,
                textColor: Colors.white),
            MaterialButton(
                onPressed: () {
                  int random = Random().nextInt(100);
                  print("Height random 2: $random");
                  getIt<RectangleCubit>(instanceName: "rectangle2")
                      .setHeight(random);
                },
                child: Text("Change Height Rectangle 2"),
                color: Colors.amber,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
