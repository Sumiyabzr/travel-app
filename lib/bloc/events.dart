import 'package:equatable/equatable.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();
}

class CategoryGetAll extends CategoryEvent {
  const CategoryGetAll();

  @override
  List<Object?> get props => [];
}
// Product
abstract class ProductEvent extends Equatable {
  const ProductEvent();
}

class ProductGetAll extends ProductEvent {
  const ProductGetAll();

  @override
  List<Object?> get props => [];
}

// EvnetCategory
abstract class EventCategoryEvent extends Equatable {
  const EventCategoryEvent();
}

class EventCategoryGetAll extends EventCategoryEvent {
  const EventCategoryGetAll();

  @override
  List<Object?> get props => [];
}

//EventProduct
abstract class EventProductEvent extends Equatable {
  const EventProductEvent();
}

class EventProductGetAll extends EventProductEvent {
  const EventProductGetAll();

  @override
  List<Object?> get props => [];
}