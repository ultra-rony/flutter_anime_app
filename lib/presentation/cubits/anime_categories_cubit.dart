import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'anime_categories_state.dart';

@injectable
class AnimeCategoriesCubit extends Cubit<AnimeCategoriesState> {
  AnimeCategoriesCubit() : super(AnimeCategoriesInitial());
}
