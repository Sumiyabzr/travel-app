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
