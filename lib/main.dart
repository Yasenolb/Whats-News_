import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/Dark_Mode/cubite_mode.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/shange_lang/lang_cubit.dart';
import 'package:untitled6/shange_lang/lang_sherd.dart';
import 'package:untitled6/sherd_page/page_cubit.dart';
import 'package:untitled6/sherd_page/page_sherd.dart';
import 'package:untitled6/start_screens/splash_screen/splash_screen.dart';
import 'Bloc/cubite.dart';
import 'Bloc/dio/dio_helper.dart';
import 'Bloc/dio/shared_preferences.dart';
import 'Dark_Mode/state_mode.dart';
import 'const/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();

  await CacheHelper.init();

  await CacheHelper2.inita();
  await CacheHelper3.initp();
  bool isDark = CacheHelper.getData('isDark');
  isArabicNews = CacheHelper2.getData2('isAr');
  isLog = CacheHelper3.getData3('isLog');
  runApp(MyApp(isDark, isArabicNews, isLog));
}

class MyApp extends StatelessWidget {
  final bool isDark;
  final bool isAr;
  final bool isLog;

  MyApp(this.isDark, this.isAr, this.isLog);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsCubit()),
        BlocProvider(
          create: (context) => ModCubit()..changMode(shard: isDark),
        ),
        BlocProvider(
          create: (context) => ModCubit2()..changLang(shard2: isAr),
        ),
        BlocProvider(
          create: (context) => ModCubit3()..changPage(shard3: isLog),
        ),
      ],
      child: BlocConsumer<ModCubit, ModStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeDataLite,
            darkTheme: themeDataDark,
            themeMode:
                ModCubit.get(context).isDark ? ThemeMode.light : ThemeMode.dark,
            home: Splashscreen(),
          );
        },
      ),
    );
  }
}
