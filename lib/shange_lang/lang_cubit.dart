// // ignore: missing_return
// import 'package:shared_preferences/shared_preferences.dart';
//
// Future<bool>saveNameP (String name) async{
// SharedPreferences Pref =await SharedPreferences.getInstance();
// Pref.setString("name", name);
// // ignore: deprecated_member_use
// return Pref.commit();
// }
// Future<String>getNameP()async {
//   SharedPreferences Pref = await SharedPreferences.getInstance();
//   String name= Pref.getString("name");
//   return name;
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/shange_lang/lang_sherd.dart';
import 'package:untitled6/shange_lang/lang_state.dart';

class ModCubit2 extends Cubit<ModStates2> {
  ModCubit2() : super(ModInitialStates2());

  static ModCubit2 get(context) => BlocProvider.of(context);

  var isArabic = true;

  void changLang({bool shard2}) {
    if (shard2 != null) {
      isArabic = shard2;
      emit(NewsChangeModeStates2());
    } else {
      isArabic = !isArabic;
      CacheHelper2.putData2('isAr', isArabic).then((value) {
        emit(NewsChangeModeStates2());
      });
    }
  }
}
