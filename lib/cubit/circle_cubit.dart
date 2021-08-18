import 'package:bloc/bloc.dart';

class CircleCubit extends Cubit<double> {
  CircleCubit() : super(7);
  setRadius(double value) {
    emit(value);
  }

  getArea() {
    return 3.14 * (state * state);
  }

  getPerimeter() {
    return 3.14 * (state * 2);
  }
}
