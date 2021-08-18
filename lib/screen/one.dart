import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:np_15_dependency_injection/cubit/circle_cubit.dart';
import 'package:np_15_dependency_injection/cubit/rectangle_cubit.dart';
import 'package:np_15_dependency_injection/dependency_injection.dart';
import 'package:np_15_dependency_injection/screen/two.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CircleCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("One"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<CircleCubit, double>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        "Normal Bloc Provider - Circle",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text("Radius : $state"),
                      Text("Area : ${context.read<CircleCubit>().getArea()}"),
                      Text(
                          "Perimeter : ${context.read<CircleCubit>().getPerimeter()}"),
                    ],
                  );
                },
              ),
              BlocBuilder<RectangleCubit, RectangleState>(
                bloc: getIt<RectangleCubit>(instanceName: "rectangle1"),
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        "Get It Injection - Rectangle 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text("Height : ${state.height}"),
                      Text("Width : ${state.width}"),
                      Text(
                          "Area : ${getIt<RectangleCubit>(instanceName: "rectangle1").getArea()}"),
                      Text(
                          "Perimeter : ${getIt<RectangleCubit>(instanceName: "rectangle1").getPerimeter()}"),
                    ],
                  );
                },
              ),
              BlocBuilder<RectangleCubit, RectangleState>(
                bloc: getIt<RectangleCubit>(instanceName: "rectangle2"),
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        "Get It Injection - Rectangle 2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text("Height : ${state.height}"),
                      Text("Width : ${state.width}"),
                      Text(
                          "Area : ${getIt<RectangleCubit>(instanceName: "rectangle2").getArea()}"),
                      Text(
                          "Perimeter : ${getIt<RectangleCubit>(instanceName: "rectangle2").getPerimeter()}"),
                    ],
                  );
                },
              ),
              BlocBuilder<CircleCubit, double>(
                builder: (context, state) {
                  return MaterialButton(
                      onPressed: () {
                        final CircleCubit circleCubit =
                            BlocProvider.of<CircleCubit>(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Two(
                                circleCubit: circleCubit,
                              ),
                            ));
                      },
                      child: Text("Go To Two"),
                      color: Colors.amber,
                      textColor: Colors.white);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
