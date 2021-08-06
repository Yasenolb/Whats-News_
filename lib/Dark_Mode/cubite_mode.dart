import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/Bloc/dio/shared_preferences.dart';
import 'package:untitled6/Dark_Mode/state_mode.dart';

class ModCubit extends Cubit<ModStates> {
  ModCubit() : super(ModInitialStates());

  static ModCubit get(context) => BlocProvider.of(context);

  var isDark = false;
  var nisDark = true;

  void changMode({bool shard}) {
    if (shard != null) {
      isDark = shard;
      emit(NewsChangeModeStates());
    } else {
      isDark = !isDark;
      CacheHelper.putData('isDark', isDark).then((value) {
        emit(NewsChangeModeStates());
      });
    }
  }
}
