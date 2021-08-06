import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/Bloc/cubite.dart';
import 'package:untitled6/Bloc/state_bloc.dart';
import 'package:untitled6/Dark_Mode/cubite_mode.dart';
import 'package:untitled6/const/const.dart';
import 'package:untitled6/shange_lang/lang_cubit.dart';

var searchController = TextEditingController();

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates2>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              //TODO don"t forget over flow
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                    onChanged: (value) {
                      NewsCubit.get(context).getSearchData(value);
                    },
                    cursorColor: ModCubit.get(context).isDark
                        ? Colors.black
                        : Colors.white,
                    style: TextStyle(
                        fontSize: 18,
                        color: ModCubit.get(context).isDark
                            ? Colors.black
                            : Colors.white),
                    textInputAction: TextInputAction.search,
                    keyboardType: TextInputType.emailAddress,
                    controller: searchController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: ModCubit.get(context).isDark
                            ? Colors.black
                            : Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      labelText:
                          ModCubit2.get(context).isArabic ? 'بحث' : "Search",
                      labelStyle: TextStyle(
                          color: ModCubit.get(context).isDark
                              ? Colors.black
                              : Colors.white),
                    ),
                    validator: (String value) {
                      if (value.isEmpty) return 'Search';
                      return null;
                    }),
              ),
              Expanded(
                  child: ConditionalBuilder(
                condition: list.length > 0,
                builder: (context) => ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildItem(list[index], context),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 10,
                ),
                fallback: (context) => Center(
                    child: Text(
                  ModCubit2.get(context).isArabic ? 'ابحث الان' : 'Search now',
                  style: TextStyle(
                      color: ModCubit.get(context).isDark
                          ? Colors.black
                          : Colors.white),
                )),
                //(context) => isSearch ? Container() : Center(child: CircularProgressIndicator())
              )),
            ],
          ),
        );
      },
    );
  }
}
