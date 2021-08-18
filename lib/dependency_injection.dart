import 'package:get_it/get_it.dart';
import 'package:np_15_dependency_injection/cubit/rectangle_cubit.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerLazySingleton<RectangleCubit>(() => RectangleCubit(),
      instanceName: "rectangle1");
  getIt.registerLazySingleton<RectangleCubit>(() => RectangleCubit(),
      instanceName: "rectangle2");
}
