import 'package:flutter/material.dart';
import 'package:untitled6/Bloc/cubite.dart';
import 'package:untitled6/Bloc/state_bloc.dart';
import 'package:untitled6/categories_news/search_screen.dart';
import 'package:untitled6/const/const.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/shange_lang/lang_cubit.dart';

class CurrenciesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            ModCubit2.get(context).isArabic ? 'عملات رقمية' : 'Currencies'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              }),
        ],
      ),
      body: BlocConsumer<NewsCubit, NewsStates2>(
          listener: (context, state) {},
          builder: (context, state) {
            var list = NewsCubit.get(context).currencies;
            return ConditionalBuilder(
              condition: list.length > 0,
              fallback: (context) => Center(child: CircularProgressIndicator()),
              builder: (context) => ListView.separated(
                  itemBuilder: (context, index) =>
                      buildItemBtc(list[index], context),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: list.length),
            );
          }),
    );
  }
}
