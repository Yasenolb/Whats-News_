import 'package:untitled6/Bloc/cubite.dart';
import 'package:untitled6/Bloc/state_bloc.dart';
import 'package:untitled6/categories_news/search_screen.dart';
import 'package:untitled6/const/const.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/shange_lang/lang_cubit.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates2>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = NewsCubit.get(context).businessData;
          var listA = NewsCubit.get(context).businessDataA;
          return Scaffold(
            appBar: AppBar(
              title:
                  Text(ModCubit2.get(context).isArabic ? 'أعمال' : 'Business'),
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
            body: ConditionalBuilder(
              condition: ModCubit2.get(context).isArabic
                  ? list.length > 0
                  : listA.length > 0,
              fallback: (context) => Center(child: CircularProgressIndicator()),
              builder: (context) => ListView.separated(
                  itemBuilder: (context, index) =>
                      ModCubit2.get(context).isArabic
                          ? buildItem(list[index], context)
                          : buildItem(listA[index], context),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: ModCubit2.get(context).isArabic
                      ? list.length
                      : listA.length),
            ),
          );
        });
  }
}
