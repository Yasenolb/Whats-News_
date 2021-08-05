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
import 'package:untitled6/sherd_page/page_sherd.dart';
import 'package:untitled6/sherd_page/page_state.dart';

var isLog=true;


class ModCubit3 extends Cubit<ModStates3> {
  ModCubit3() : super(ModInitialStates3());

  static ModCubit3 get(context) => BlocProvider.of(context);

  var isLog=true;

void changPage({bool shard3}) {


  if (shard3 != null) {
    isLog = shard3;
    emit(NewsChangeModeStates3());
  }
  else {
    isLog = !isLog;
    CacheHelper3.putData3('isLog', isLog).then((value) {
      emit(NewsChangeModeStates3());
    });
  }
}}