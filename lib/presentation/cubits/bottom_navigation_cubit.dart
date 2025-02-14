import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit() : super(0);

  Future<void> setIndex(int index) async {
    emit(index);
  }
}
