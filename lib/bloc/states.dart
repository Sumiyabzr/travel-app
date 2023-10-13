import 'package:equatable/equatable.dart';
import 'package:visitulaanbaatar/model/product.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryInitial extends CategoryState {
  const CategoryInitial();

  @override
  List<Object?> get props => [];
}

class CategoryLoading extends CategoryState {
  const CategoryLoading();

  @override
  List<Object?> get props => [];
}

class CategorySuccess extends CategoryState {
  CategorySuccess();

  @override
  List<Object?> get props => [];
}

class CategoryFailure extends CategoryState {
  final String message;

  CategoryFailure(this.message);

  @override
  List<Object?> get props => [message];
}

// Product
abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductInitial extends ProductState {
  const ProductInitial();

  @override
  List<Object?> get props => [];
}

class ProductLoading extends ProductState {
  const ProductLoading();

  @override
  List<Object?> get props => [];
}

class ProductSuccess extends ProductState {
  ProductSuccess();

  @override
  List<Object?> get props => [];
}

class ProductFailure extends ProductState {
  final String message;

  ProductFailure(this.message);

  @override
  List<Object?> get props => [message];
}

// EventCategory
abstract class EventCategoryState extends Equatable {
  const EventCategoryState();
}

class EventCategoryInitial extends EventCategoryState {
  const EventCategoryInitial();

  @override
  List<Object?> get props => [];
}

class EventCategoryLoading extends EventCategoryState {
  const EventCategoryLoading();

  @override
  List<Object?> get props => [];
}

class EventCategorySuccess extends EventCategoryState {
  EventCategorySuccess();

  @override
  List<Object?> get props => [];
}

class EventCategoryFailure extends EventCategoryState {
  final String message;

  EventCategoryFailure(this.message);

  @override
  List<Object?> get props => [message];
}

// EventProduct
abstract class EventProductState extends Equatable {
  const EventProductState();
}

class EventProductInitial extends EventProductState {
  const EventProductInitial();

  @override
  List<Object?> get props => [];
}

class EventProductLoading extends EventProductState {
  const EventProductLoading();

  @override
  List<Object?> get props => [];
}

class EventProductSuccess extends EventProductState {
  EventProductSuccess();

  @override
  List<Object?> get props => [];
}

class EventProductFailure extends EventProductState {
  final String message;

  EventProductFailure(this.message);

  @override
  List<Object?> get props => [message];
}