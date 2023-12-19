import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:visitulaanbaatar/bloc/events.dart';
import 'package:visitulaanbaatar/bloc/states.dart';
import 'package:visitulaanbaatar/global_keys.dart';
import 'package:visitulaanbaatar/provider/common.dart';
import 'package:visitulaanbaatar/services/api/index.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<CategoryGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .categories
          .isEmpty) {
        emit(CategoryLoading());
        try {
          final api = ApiService();
          final res = await api.getRequest('/category/Destination', true);
          print('Category orj irlee!');
          Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                  listen: false)
              .setCategories(res.data);
          emit(CategorySuccess());
        } catch (ex) {
          print(ex);
          emit(CategoryFailure(ex.toString()));
        }
      }
    });
  }
}

// ProductGetAll
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .products
          .isEmpty) {
        emit(ProductLoading());
        try {
          final api = ApiService();
          List<String> categoryData = [
            "DesNearby",
            "DesCentral",
            "DesSouthern",
            "DesWestern",
            "DesEastern",
            "DesNorthern"
          ];
          for (int i = 0; i < categoryData.length; i++) {
            var res =
                await api.getRequest('/product/' + categoryData[i].toString());
            print('$i dah categoriin product orj irlee');
            Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                    listen: false)
                .setProducts(res.data);
          }
          emit(ProductSuccess());
        } catch (ex) {
          print(ex);
          emit(ProductFailure(ex.toString()));
        }
      }
    });
  }
}

// EventCategoryGetAll
class EventCategoryBloc extends Bloc<EventCategoryEvent, EventCategoryState> {
  EventCategoryBloc() : super(EventCategoryInitial()) {
    on<EventCategoryGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .eventCategories
          .isEmpty) {
        emit(EventCategoryLoading());
        try {
          final api = ApiService();
          final res = await api.getRequest('/category/EventCategory/', true);
          print('EventCategory orj irlee!');
          Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                  listen: false)
              .setEventCategories(res.data);
          emit(EventCategorySuccess());
        } catch (ex) {
          print(ex);
          emit(EventCategoryFailure(ex.toString()));
        }
      }
    });
  }
}

//EventProductGetAll
class EventProductBloc extends Bloc<EventProductEvent, EventProductState> {
  EventProductBloc() : super(EventProductInitial()) {
    on<EventProductGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .eventProducts
          .isEmpty) {
        emit(EventProductLoading());
        try {
          final api = ApiService();
          List<String> category = [
            "February",
            "March",
            "April",
            "May",
            "June",
            "July",
            "August",
            "September",
            "October",
            "December",
            "January",
            "November",
          ];
          for (int i = 0; i < category.length; i++) {
            var res =
                await api.getRequest('/product/' + category[i].toString());
            print('$i dah categoriin event product orj irlee');
            Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                    listen: false)
                .setEventProducts(res.data);
          }
          emit(EventProductSuccess());
        } catch (ex) {
          print(ex);
          emit(EventProductFailure(ex.toString()));
        }
      }
    });
  }
}

// CommCategory
class CommCategoryBloc extends Bloc<CommCategoryEvent, CommCategoryState> {
  CommCategoryBloc() : super(CommCategoryInitial()) {
    on<CommCategoryGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .commCategory
          .isEmpty) {
        emit(CommCategoryLoading());
        try {
          final api = ApiService();
          final res = await api.getRequest('/category/commercial', true);
          print('Comm category orj irlee!');
          Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                  listen: false)
              .setCommCategory(res.data);
          emit(CommCategorySuccess());
        } catch (ex) {
          print(ex);
          emit(CommCategoryFailure(ex.toString()));
        }
      }
    });
  }
}

// CommProduct
class CommProductBloc extends Bloc<CommProductEvent, CommProductState> {
  CommProductBloc() : super(CommProductInitial()) {
    on<CommProductGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .commProduct
          .isEmpty) {
        emit(CommProductLoading());
        try {
          final api = ApiService();
          List<String> categoryData = [
            "Hotels",
            "Food",
            "Fashion",
            "Nightlife",
            "Shopping",
            "Wellness",
            "Activities"
          ];
          for (int i = 0; i < categoryData.length; i++) {
            var res =
                await api.getRequest('/product/' + categoryData[i].toString());
            print('$i dah commCategoriin product orj irlee');
            Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                    listen: false)
                .setCommProducts(res.data);
          }
          emit(CommProductSuccess());
        } catch (ex) {
          print(ex);
          emit(CommProductFailure(ex.toString()));
        }
      }
    });
  }
}

//CulturalCategory
class CulturalCategoryBloc
    extends Bloc<CulturalCategoryEvent, CulturalCategoryState> {
  CulturalCategoryBloc() : super(CulturalCategoryInitial()) {
    on<CulturalCategoryGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .culturalCategory
          .isEmpty) {
        emit(CulturalCategoryLoading());
        try {
          final api = ApiService();
          final res = await api.getRequest('/category/Cultural', true);
          print('Cultural category orj irlee!');
          Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                  listen: false)
              .setCulturalCategory(res.data);
          emit(CulturalCategorySuccess());
        } catch (ex) {
          print(ex);
          emit(CulturalCategoryFailure(ex.toString()));
        }
      }
    });
  }
}

// CulturalProduct
class CulturalProductBloc
    extends Bloc<CulturalProductEvent, CulturalProductState> {
  CulturalProductBloc() : super(CulturalProductInitial()) {
    on<CulturalProductGetAll>((event, emit) async {
      if (Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
              listen: false)
          .culturalProduct
          .isEmpty) {
        emit(CulturalProductLoading());
        try {
          final api = ApiService();
          List<String> categoryData = [
            "Museums",
            "PlaceVisit",
            "Monasteries",
            "Statues",
          ];
          for (int i = 0; i < categoryData.length; i++) {
            var res =
                await api.getRequest('/product/' + categoryData[i].toString());
            print('$i dah culturalCategoriin product orj irlee');
            Provider.of<CommonProvider>(GlobalKeys.navigatorKey.currentContext!,
                    listen: false)
                .setCulturalProducts(res.data);
          }
          emit(CulturalProductSuccess());
        } catch (ex) {
          print(ex);
          emit(CulturalProductFailure(ex.toString()));
        }
      }
    });
  }
}
