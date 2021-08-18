import 'package:flutter/material.dart';

import 'package:np_15_dependency_injection/cubit/circle_cubit.dart';
import 'package:np_15_dependency_injection/screen/three.dart';

class Two extends StatelessWidget {
  const Two({
    Key? key,
    required this.circleCubit,
  }) : super(key: key);

  final CircleCubit circleCubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Three(
                        circleCubit: circleCubit,
                      ),
                    )),
                child: Text("Go To Three"),
                color: Colors.amber,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
