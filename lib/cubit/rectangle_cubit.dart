import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class RectangleCubit extends Cubit<RectangleState> {
  RectangleCubit() : super(RectangleState(height: 10, width: 5));

  setWidth(int value) {
    emit(RectangleState(height: state.height, width: value));
  }

  setHeight(int value) {
    emit(RectangleState(height: value, width: state.width));
  }

  getArea() {
    return state.height * state.width;
  }

  getPerimeter() {
    return (state.height + state.width) * 2;
  }
}

class RectangleState extends Equatable {
  final int height;
  final int width;
  RectangleState({
    required this.height,
    required this.width,
  });

  @override
  List<Object> get props => [height, width];
}
