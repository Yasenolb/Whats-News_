import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/categories_news/seteings_screen.dart';
import 'package:untitled6/shange_lang/lang_cubit.dart';
import 'package:untitled6/start_screens/sing_up_screen/sing_up_screen.dart';
import 'Bloc/cubite.dart';
import 'categories_news/Sport_screen.dart';
import 'categories_news/business_screen.dart';
import 'categories_news/currencies_screen.dart';
import 'categories_news/entertainment_screen.dart';
import 'categories_news/science_screen.dart';
import 'Bloc/state_bloc.dart';
import 'Dark_Mode/cubite_mode.dart';
import 'categories_news/health_screen.dart';
import 'categories_news/search_screen.dart';
import 'categories_news/technology_screen.dart';

class HomeLayout extends StatefulWidget {
  @override
  HomeLayoutState createState() => HomeLayoutState();
}

class HomeLayoutState extends State<HomeLayout> {
  @override
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates2>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context);
        return Scaffold(
          drawer: Drawer(
              elevation: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.blue[900],
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.only(top: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('images/logo11.jpg'),
                                  ))),
                          Text(
                            "Whats News",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${emailController2.text}",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: 700,
                        color: ModCubit.get(context).isDark
                            ? Colors.white
                            : Colors.grey[850],
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Ionicons.business_outline,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'اعمال'
                                    : 'Business',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BusinessScreen()));
                                ModCubit2.get(context).isArabic
                                    ? list.getBusinessData()
                                    : list.getBusinessDataA();
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Ionicons.american_football_outline,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'رياضة'
                                    : 'Sports',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SportScreen()));
                                ModCubit2.get(context).isArabic
                                    ? list.getSportsData()
                                    : list.getSportsDataA();
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.science,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'علوم'
                                    : 'Science',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ScienceScreen()));
                                ModCubit2.get(context).isArabic
                                    ? list.getScienceData()
                                    : list.getScienceDataA();
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Ionicons.musical_notes_outline,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'ترفيه'
                                    : 'Entertainment',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EntertainmentScreen()));
                                ModCubit2.get(context).isArabic
                                    ? list.getEntertainmentData()
                                    : list.getEntertainmentDataA();
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.biotech,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'تكنلوجيا'
                                    : 'Technology',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TechnologyScreen()));
                                ModCubit2.get(context).isArabic
                                    ? list.getTechnologyData()
                                    : list.getTechnologyDataA();
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Ionicons.medkit_outline,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'صحة'
                                    : 'Health',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HealthScreen()));
                                ModCubit2.get(context).isArabic
                                    ? list.getHealthData()
                                    : list.getHealthDataA();
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.monetization_on_outlined,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'العملات الرقمية'
                                    : 'Currencies',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CurrenciesScreen()));
                                list.getCurrenciesData();
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.settings,
                                color: ModCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              title: Text(
                                ModCubit2.get(context).isArabic
                                    ? 'الإعدادات'
                                    : 'Settings',
                                style: ModCubit.get(context).isDark
                                    ? TextStyle(color: Colors.black)
                                    : TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Settings()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          appBar: AppBar(
            title: Text(
              ModCubit2.get(context).isArabic ? 'الرئيسية' : 'Home',
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  }),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BusinessScreen()));
                    ModCubit2.get(context).isArabic
                        ? list.getBusinessData()
                        : list.getBusinessDataA();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Card(
                      color: ModCubit.get(context).isDark
                          ? Colors.white
                          : Colors.grey[850],
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'images/icon1.png',
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ModCubit2.get(context).isArabic
                                          ? 'اعمال'
                                          : 'Business',
                                      overflow: TextOverflow.ellipsis,
                                      style: ModCubit.get(context).isDark
                                          ? TextStyle(fontSize: 20)
                                          : TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SportScreen()));
                    ModCubit2.get(context).isArabic
                        ? list.getSportsData()
                        : list.getSportsDataA();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Card(
                      color: ModCubit.get(context).isDark
                          ? Colors.white
                          : Colors.grey[850],
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'images/icon2.png',
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ModCubit2.get(context).isArabic
                                          ? 'رياضة'
                                          : 'Sports',
                                      overflow: TextOverflow.ellipsis,
                                      style: ModCubit.get(context).isDark
                                          ? TextStyle(fontSize: 20)
                                          : TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScienceScreen()));
                    ModCubit2.get(context).isArabic
                        ? list.getScienceData()
                        : list.getScienceDataA();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Card(
                      color: ModCubit.get(context).isDark
                          ? Colors.white
                          : Colors.grey[850],
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'images/icon3.1.png',
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ModCubit2.get(context).isArabic
                                          ? 'علوم'
                                          : 'Science',
                                      overflow: TextOverflow.ellipsis,
                                      style: ModCubit.get(context).isDark
                                          ? TextStyle(fontSize: 20)
                                          : TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EntertainmentScreen()));
                    ModCubit2.get(context).isArabic
                        ? list.getEntertainmentData()
                        : list.getEntertainmentDataA();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Card(
                      color: ModCubit.get(context).isDark
                          ? Colors.white
                          : Colors.grey[850],
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'images/icon4.png',
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ModCubit2.get(context).isArabic
                                          ? 'ترفيه'
                                          : 'Entertainment',
                                      overflow: TextOverflow.ellipsis,
                                      style: ModCubit.get(context).isDark
                                          ? TextStyle(fontSize: 20)
                                          : TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TechnologyScreen()));
                    ModCubit2.get(context).isArabic
                        ? list.getTechnologyData()
                        : list.getTechnologyDataA();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Card(
                      color: ModCubit.get(context).isDark
                          ? Colors.white
                          : Colors.grey[850],
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'images/icon5.png',
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ModCubit2.get(context).isArabic
                                          ? 'تكنلوجيا'
                                          : 'Technology',
                                      overflow: TextOverflow.ellipsis,
                                      style: ModCubit.get(context).isDark
                                          ? TextStyle(fontSize: 20)
                                          : TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HealthScreen()));
                    ModCubit2.get(context).isArabic
                        ? list.getHealthData()
                        : list.getHealthDataA();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Card(
                      color: ModCubit.get(context).isDark
                          ? Colors.white
                          : Colors.grey[850],
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'images/icon7.png',
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ModCubit2.get(context).isArabic
                                          ? 'صحة'
                                          : 'Health',
                                      overflow: TextOverflow.ellipsis,
                                      style: ModCubit.get(context).isDark
                                          ? TextStyle(fontSize: 20)
                                          : TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    list..getCurrenciesData();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CurrenciesScreen()));
                    list.getCurrenciesData();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Card(
                      color: ModCubit.get(context).isDark
                          ? Colors.white
                          : Colors.grey[850],
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'images/icon6.png',
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ModCubit2.get(context).isArabic
                                          ? 'العملات الرقمية'
                                          : 'Currencies',
                                      overflow: TextOverflow.ellipsis,
                                      style: ModCubit.get(context).isDark
                                          ? TextStyle(fontSize: 20)
                                          : TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
