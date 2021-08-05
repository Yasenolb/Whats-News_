import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:ionicons/ionicons.dart';
import 'package:untitled6/Dark_Mode/cubite_mode.dart';
import 'package:untitled6/categories_news/web_sacreen.dart';
import 'package:untitled6/shange_lang/lang_cubit.dart';
import 'dart:io' show Platform;


Widget buildItem(article, context) => Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(
        onTap: () {
          showAnimatedDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return ClassicGeneralDialogWidget(
                positiveTextStyle: TextStyle(fontSize: 30),
                contentText: '${article['title']}',
                actions: [

if ((defaultTargetPlatform == TargetPlatform.iOS) || (defaultTargetPlatform == TargetPlatform.android))
             TextButton(

    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          WebViewScreen(article['url'])));
    },
    child: Text(
      ModCubit2
          .get(context)
          .isArabic ? 'عرض الخبر' : 'View news',
    ),
  ),





                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      ModCubit2.get(context).isArabic ? 'إغلاق' : 'Close',
                    ),
                  ),
                ],
                onNegativeClick: () {
                  Navigator.of(context).pop();
                },
              );
            },
          );
        },
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      '${article[r'urlToImage']}',
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${article['title']}',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Text(
                      '${article['publishedAt']}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

Widget buildItemBtc(article, context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        color: ModCubit.get(context).isDark ? Colors.white : Colors.grey[850],
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                  '${article[r'image']}',
                ),
                //     fit: BoxFit.contain,
              )),
            ),
            Expanded(
              child: Container(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${article['name']}',
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                '${article['symbol']}',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$ ${article['current_price']}',
                            style: ModCubit.get(context).isDark
                                ? TextStyle(fontSize: 20)
                                : TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Ionicons.trending_up,
                                color: Colors.green,
                                size: 17,
                              ),
                              Text(
                                '${article['high_24h']}',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.green),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Ionicons.trending_down,
                                color: Colors.red,
                                size: 17,
                              ),
                              Text(
                                '${article['low_24h']}',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

ThemeData themeDataLite = ThemeData(
  textTheme: TextTheme(
      bodyText1: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  )),
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(
        color: Colors.black,
      )),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
    elevation: 20.0,
  ),
  // floatingActionButtonTheme: FloatingActionButtonThemeData(
  //     backgroundColor: Colors.deepOrangeAccent)),
);

ThemeData themeDataDark = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.grey[850],
  appBarTheme: AppBarTheme(
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      backgroundColor: Colors.grey[850],
      elevation: 0.0,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(
        color: Colors.white,
      )),
  textTheme: TextTheme(
      bodyText1: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  )),
);
