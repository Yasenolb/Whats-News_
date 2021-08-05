import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/Bloc/state_bloc.dart';
import 'dio/dio_helper.dart';

var cit = 'eg';
var cit2 = 'us';
bool isArabicNews = false;

List<dynamic> sportsData = [];

class NewsCubit extends Cubit<NewsStates2> {
  NewsCubit() : super(NewsInitialStates());

  static NewsCubit get(context) => BlocProvider.of(context);

  bool isArabicNews = false;

  List<dynamic> businessData = [];
  void getBusinessData() {
    emit(NewsGetLoadingBusinessStats());
    if (businessData.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit,
        'category': 'business',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        businessData = value.data['articles'];

        print(businessData[0]['title'].toString());
        emit(NewsGetBusinessDataStates());
      }).catchError((error) {
        print(error);
        emit(NewsGetBusinessErrorStats(error.toString()));
      });
    } else {
      emit(NewsGetBusinessDataStates());
    }
  }
  List<dynamic> businessDataA = [];
  void getBusinessDataA() {
    emit(NewsGetLoadingBusinessStatsA());
    if (businessDataA.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit2,
        'category': 'business',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        businessDataA = value.data['articles'];

        print(businessDataA[0]['title'].toString());
        emit(NewsGetBusinessDataStatesA());
      }).catchError((error) {
        print(error);
        emit(NewsGetBusinessErrorStatsA(error.toString()));
      });
    } else {
      emit(NewsGetBusinessDataStates());
    }
  }

  List<dynamic> sportsData = [];
  void getSportsData() {
    emit(NewsGetLoadingSportsStats());

    if (sportsData.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit,
        'category': 'sport',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        sportsData = value.data['articles'];

        print(sportsData[0]['title'].toString());
        emit(NewsGetSportsDataStates());
      }).catchError((error) {
        print(error);
        emit(NewsGetSportsErrorStats(error.toString()));
      });
    } else {
      emit(NewsGetSportsDataStates());
    }
  }
  List<dynamic> sportsDataA = [];
  void getSportsDataA() {
    emit(NewsGetLoadingSportsStatsA());

    if (sportsDataA.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit2,
        'category': 'sport',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        sportsDataA = value.data['articles'];

        print(sportsDataA[0]['title'].toString());
        emit(NewsGetSportsDataStatesA());
      }).catchError((error) {
        print(error);
        emit(NewsGetSportsErrorStatsA(error.toString()));
      });
    } else {
      emit(NewsGetSportsDataStates());
    }
  }


  List<dynamic> scienceData = [];
  void getScienceData() {
    emit(NewsGetLoadingScienceStats());
    if (scienceData.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country':  cit,
        'category': 'science',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        scienceData = value.data['articles'];

        print(scienceData[0]['title'].toString());
        emit(NewsGetScienceDataStates());
      }).catchError((error) {
        print(error);
        emit(NewsGetScienceErrorStats(error.toString()));
      });
    } else {
      NewsGetScienceDataStates();
    }
  }

  List<dynamic> scienceDataA = [];
  void getScienceDataA() {
    emit(NewsGetLoadingScienceStatsA());
    if (scienceDataA.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country':  cit2,
        'category': 'science',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        scienceDataA = value.data['articles'];

        print(scienceDataA[0]['title'].toString());
        emit(NewsGetScienceDataStatesA());
      }).catchError((error) {
        print(error);
        emit(NewsGetScienceErrorStatsA(error.toString()));
      });
    } else {
      NewsGetScienceDataStatesA();
    }
  }


  List<dynamic> entertainmentData = [];
  void getEntertainmentData() {
    emit(NewsGetLoadingEntertainmentStats());
    if (entertainmentData.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit,
        'category': 'entertainment',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        entertainmentData = value.data['articles'];

        print(entertainmentData[0]['title'].toString());
        emit(NewsGetEntertainmentDataStates());
      }).catchError((error) {
        print(error);
        emit(NewsGetEntertainmentErrorStats(error.toString()));
      });
    } else {
      NewsGetEntertainmentDataStates();
    }
  }

  List<dynamic> entertainmentDataA = [];
  void getEntertainmentDataA() {
    emit(NewsGetLoadingEntertainmentStatsA());
    if (entertainmentDataA.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country':  cit2,
        'category': 'entertainment',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        entertainmentDataA = value.data['articles'];

        print(entertainmentDataA[0]['title'].toString());
        emit(NewsGetEntertainmentDataStatesA());
      }).catchError((error) {
        print(error);
        emit(NewsGetEntertainmentErrorStatsA(error.toString()));
      });
    } else {
      NewsGetEntertainmentDataStatesA();
    }
  }


  List<dynamic> technologyData = [];
  void getTechnologyData() {
    emit(NewsGetLoadingTechnologyStats());
    if (technologyData.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit,
        'category': 'technology',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        technologyData = value.data['articles'];

        print(technologyData[0]['title'].toString());
        emit(NewsGetTechnologyDataStates());
      }).catchError((error) {
        print(error);
        emit(NewsGetTechnologyErrorStats(error.toString()));
      });
    } else {
      NewsGetTechnologyDataStates();
    }
  }

  List<dynamic> technologyDataA = [];
  void getTechnologyDataA() {
    emit(NewsGetLoadingTechnologyStatsA());
    if (technologyDataA.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit2,
        'category': 'technology',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        technologyDataA = value.data['articles'];

        print(technologyDataA[0]['title'].toString());
        emit(NewsGetTechnologyDataStatesA());
      }).catchError((error) {
        print(error);
        emit(NewsGetTechnologyErrorStatsA(error.toString()));
      });
    } else {
      NewsGetTechnologyDataStatesA();
    }
  }


  List<dynamic> healthData = [];
  void getHealthData() {
    emit(NewsGetLoadingHealthStats());
    if (healthData.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit ,
        'category': 'health',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        healthData = value.data['articles'];

        print(healthData[0]['title'].toString());
        emit(NewsGetHealthDataStates());
      }).catchError((error) {
        print(error);
        emit(NewsGetHealthErrorStats(error.toString()));
      });
    } else {
      NewsGetHealthDataStates();
    }
  }

  List<dynamic> healthDataA = [];
  void getHealthDataA() {
    emit(NewsGetLoadingHealthStatsA());
    if (healthDataA.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': cit2,
        'category': 'health',
        'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
      }).then((value) {
        healthDataA = value.data['articles'];

        print(healthDataA[0]['title'].toString());
        emit(NewsGetHealthDataStatesA());
      }).catchError((error) {
        print(error);
        emit(NewsGetHealthErrorStatsA(error.toString()));
      });
    } else {
      NewsGetHealthDataStatesA();
    }
  }








  List<dynamic> search = [];

  void getSearchData(String value) async {
    emit(NewsGetLoadingSearchStats());
    search = [];

    DioHelper.getData(url: 'v2/everything', query: {
      'q': '$value',
      'apiKey': '6daf1ee6c0c443729478c4d040c4e910',
    }).then((value) {
      search = value.data['articles'];

      print(search[0]['id'].toString());
      emit(NewsGetSearchDataStates());
    }).catchError((error) {
      print(error);
      emit(NewsGetSearchErrorStats(error.toString()));
    });
  }

  List<dynamic> currencies = [];

  void getCurrenciesData() async {
    emit(NewsGetLoadingCurrenciesStats());
    if (currencies.length == 0) {
      await DioHelper.getData2(url2: '/api/v3/coins/markets', query2: {
        'vs_currency': 'usd',
        'order': 'market_cap_desc',
        'per_page': '30',
        'page': '1',
        'sparkline': 'false',
      }).then((value) {
        currencies = value.data;

        print(value.data[0]['id'].toString());
        emit(NewsGetCurrenciesDataStates());
      }).catchError((error) {
        print(error);
        emit(NewsGetCurrenciesErrorStats(error.toString()));
      });
    } else {
      NewsGetCurrenciesDataStates();
    }
  }
}
