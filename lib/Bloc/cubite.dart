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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        businessData = value.data['articles'];

        emit(NewsGetBusinessDataStates());
      }).catchError((error) {
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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        businessDataA = value.data['articles'];

        emit(NewsGetBusinessDataStatesA());
      }).catchError((error) {
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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        sportsData = value.data['articles'];

        emit(NewsGetSportsDataStates());
      }).catchError((error) {
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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        sportsDataA = value.data['articles'];

        emit(NewsGetSportsDataStatesA());
      }).catchError((error) {
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
        'country': cit,
        'category': 'science',
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        scienceData = value.data['articles'];

        emit(NewsGetScienceDataStates());
      }).catchError((error) {
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
        'country': cit2,
        'category': 'science',
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        scienceDataA = value.data['articles'];

        emit(NewsGetScienceDataStatesA());
      }).catchError((error) {
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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        entertainmentData = value.data['articles'];

        emit(NewsGetEntertainmentDataStates());
      }).catchError((error) {
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
        'country': cit2,
        'category': 'entertainment',
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        entertainmentDataA = value.data['articles'];

        emit(NewsGetEntertainmentDataStatesA());
      }).catchError((error) {
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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        technologyData = value.data['articles'];

        emit(NewsGetTechnologyDataStates());
      }).catchError((error) {
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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        technologyDataA = value.data['articles'];

        emit(NewsGetTechnologyDataStatesA());
      }).catchError((error) {
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
        'country': cit,
        'category': 'health',
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        healthData = value.data['articles'];

        emit(NewsGetHealthDataStates());
      }).catchError((error) {
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
        'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
      }).then((value) {
        healthDataA = value.data['articles'];

        emit(NewsGetHealthDataStatesA());
      }).catchError((error) {
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
      'apiKey': 'b1b3525c3cb540269da75f8079fc10b6',
    }).then((value) {
      search = value.data['articles'];
      emit(NewsGetSearchDataStates());
    }).catchError((error) {
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

        emit(NewsGetCurrenciesDataStates());
      }).catchError((error) {
        emit(NewsGetCurrenciesErrorStats(error.toString()));
      });
    } else {
      NewsGetCurrenciesDataStates();
    }
  }
}
