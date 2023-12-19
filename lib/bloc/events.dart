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

// Commercial category
abstract class CommCategoryEvent extends Equatable {
  const CommCategoryEvent();
}

class CommCategoryGetAll extends CommCategoryEvent {
  const CommCategoryGetAll();

  @override
  List<Object?> get props => [];
}

// Commercial product
abstract class CommProductEvent extends Equatable {
  const CommProductEvent();
}

class CommProductGetAll extends CommProductEvent {
  const CommProductGetAll();

  @override
  List<Object?> get props => [];
}

// CulturalCategory
abstract class CulturalCategoryEvent extends Equatable {
  const CulturalCategoryEvent();
}

class CulturalCategoryGetAll extends CulturalCategoryEvent {
  const CulturalCategoryGetAll();

  @override
  List<Object?> get props => [];
}

// culturalProduct
abstract class CulturalProductEvent extends Equatable {
  const CulturalProductEvent();
}

class CulturalProductGetAll extends CulturalProductEvent {
  const CulturalProductGetAll();

  @override
  List<Object?> get props => [];
}
