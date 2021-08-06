import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:untitled6/Bloc/cubite.dart';
import 'package:untitled6/Dark_Mode/cubite_mode.dart';
import 'package:untitled6/Home_layout.dart';
import 'package:untitled6/shange_lang/lang_cubit.dart';
import 'package:untitled6/start_screens/sing_up_screen/sing_up_screen.dart';
import 'package:untitled6/start_screens/welcome_screen/welcome-screen.dart';

// ignore: unused_element
bool _switchValue = false;

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var listSport = NewsCubit.get(context).sportsData;
    var listSportA = NewsCubit.get(context).sportsDataA;
    var listBusiness = NewsCubit.get(context).businessData;
    var listBusinessA = NewsCubit.get(context).businessDataA;
    var listScience = NewsCubit.get(context).scienceData;
    var listScienceA = NewsCubit.get(context).scienceDataA;
    var listEntertainment = NewsCubit.get(context).entertainmentData;
    var listEntertainmentA = NewsCubit.get(context).entertainmentDataA;
    var listTechnology = NewsCubit.get(context).technologyData;
    var listTechnologyA = NewsCubit.get(context).technologyDataA;
    var listHealth = NewsCubit.get(context).healthData;
    var listHealthA = NewsCubit.get(context).healthDataA;
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Text(
            ModCubit2.get(context).isArabic ? 'الاعدادات' : 'Settings',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/logo11.jpg'),
                        ))),
              ),

              SizedBox(
                height: 15,
              ),
              SettingsTile.switchTile(
                title: ModCubit2.get(context).isArabic
                    ? 'اللغة العربية'
                    : 'Arabic',
                titleTextStyle: ModCubit.get(context).isDark
                    ? TextStyle(fontSize: 18)
                    : TextStyle(fontSize: 18, color: Colors.white),
                leading: Icon(
                  Icons.language,
                  color: ModCubit.get(context).isDark
                      ? Colors.black
                      : Colors.white,
                ),
                switchValue: ModCubit2.get(context).isArabic,
                onToggle: (value) {
                  setState(() {
                    listSport.length = 0;
                    listSportA.length = 0;
                    listBusiness.length = 0;
                    listBusinessA.length = 0;
                    listScience.length = 0;
                    listScienceA.length = 0;
                    listEntertainment.length = 0;
                    listEntertainmentA.length = 0;
                    listTechnology.length = 0;
                    listTechnologyA.length = 0;
                    listHealth.length = 0;
                    listHealthA.length = 0;

                    setState(() {
                      ModCubit2.get(context).changLang();
                      // isArabic = !isArabic;
                    });
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeLayout()),
                        (route) => false);
                  });
                },
              ),
              Divider(
                color: Colors.black,
              ),
              //isArabic
              SettingsTile.switchTile(
                title: ModCubit2.get(context).isArabic
                    ? 'الوضع الداكن'
                    : 'Dark mode',
                titleTextStyle: ModCubit.get(context).isDark
                    ? TextStyle(fontSize: 18)
                    : TextStyle(fontSize: 18, color: Colors.white),
                leading: ModCubit.get(context).isDark
                    ? Icon(
                        Icons.brightness_2_outlined,
                        color: Colors.black,
                      )
                    : Icon(
                        Icons.brightness_2,
                        color: Colors.white,
                      ),
                switchValue: ModCubit.get(context).isDark
                    ? _switchValue = false
                    : _switchValue = true,
                onToggle: (value) {
                  setState(() {
                    ModCubit.get(context).changMode();
                  });
                },
              ),
              Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  showAnimatedDialog(
                    animationType: DialogTransitionType.size,
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(milliseconds: 500),
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return ClassicGeneralDialogWidget(
                        titleText: ModCubit2.get(context).isArabic
                            ? 'للتواصل'
                            : 'To communicate',
                        positiveTextStyle: TextStyle(fontSize: 30),
                        contentText: 'yasen230@gmail.com\n \n+963994898257',
                        onNegativeClick: () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: ModCubit.get(context).isDark
                            ? Colors.black
                            : Colors.white,
                      ),
                      SizedBox(
                        width: 28,
                      ),
                      Text(
                        ModCubit2.get(context).isArabic ? 'حول' : 'about',
                        style: TextStyle(
                            fontSize: 18,
                            color: ModCubit.get(context).isDark
                                ? Colors.black
                                : Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  showAnimatedDialog(
                    animationType: DialogTransitionType.size,
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(milliseconds: 500),
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return ClassicGeneralDialogWidget(
                        titleText: ModCubit2.get(context).isArabic
                            ? 'تسجيل الخروج'
                            : 'Loge out',
                        positiveTextStyle: TextStyle(fontSize: 30),
                        contentText: ModCubit2.get(context).isArabic
                            ? 'هل انت متأكد من تسجيل الخروج'
                            : 'Are you sure to log out',
                        actions: [
                          TextButton(
                              onPressed: () {
                                // ignore: unnecessary_statements

                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WelcomeScreen()),
                                    (route) => false);
                                setState(() {
                                  // ignore: unnecessary_statements
                                  cc != null;
                                });
                              },
                              child: Text(ModCubit2.get(context).isArabic
                                  ? 'نعم'
                                  : 'Yes')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(ModCubit2.get(context).isArabic
                                  ? 'لا'
                                  : 'No')),
                        ],
                        onNegativeClick: () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: ModCubit.get(context).isDark
                            ? Colors.black
                            : Colors.white,
                      ),
                      SizedBox(
                        width: 28,
                      ),
                      Text(
                        ModCubit2.get(context).isArabic
                            ? 'تسجيل خروج'
                            : 'logout',
                        style: TextStyle(
                            fontSize: 18,
                            color: ModCubit.get(context).isDark
                                ? Colors.black
                                : Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
