import 'package:equatable/equatable.dart';

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

// Commercial category
abstract class CommCategoryState extends Equatable {
  const CommCategoryState();
}

class CommCategoryInitial extends CommCategoryState {
  const CommCategoryInitial();

  @override
  List<Object?> get props => [];
}

class CommCategoryLoading extends CommCategoryState {
  const CommCategoryLoading();

  @override
  List<Object?> get props => [];
}

class CommCategorySuccess extends CommCategoryState {
  CommCategorySuccess();

  @override
  List<Object?> get props => [];
}

class CommCategoryFailure extends CommCategoryState {
  final String message;

  CommCategoryFailure(this.message);

  @override
  List<Object?> get props => [message];
}

// Commercial product
abstract class CommProductState extends Equatable {
  const CommProductState();
}

class CommProductInitial extends CommProductState {
  const CommProductInitial();

  @override
  List<Object?> get props => [];
}

class CommProductLoading extends CommProductState {
  const CommProductLoading();

  @override
  List<Object?> get props => [];
}

class CommProductSuccess extends CommProductState {
  CommProductSuccess();

  @override
  List<Object?> get props => [];
}

class CommProductFailure extends CommProductState {
  final String message;

  CommProductFailure(this.message);

  @override
  List<Object?> get props => [message];
}

// CulturalCategory
abstract class CulturalCategoryState extends Equatable {
  const CulturalCategoryState();
}

class CulturalCategoryInitial extends CulturalCategoryState {
  const CulturalCategoryInitial();

  @override
  List<Object?> get props => [];
}

class CulturalCategoryLoading extends CulturalCategoryState {
  const CulturalCategoryLoading();

  @override
  List<Object?> get props => [];
}

class CulturalCategorySuccess extends CulturalCategoryState {
  CulturalCategorySuccess();

  @override
  List<Object?> get props => [];
}

class CulturalCategoryFailure extends CulturalCategoryState {
  final String message;

  CulturalCategoryFailure(this.message);

  @override
  List<Object?> get props => [message];
}

// Commercial product
abstract class CulturalProductState extends Equatable {
  const CulturalProductState();
}

class CulturalProductInitial extends CulturalProductState {
  const CulturalProductInitial();

  @override
  List<Object?> get props => [];
}

class CulturalProductLoading extends CulturalProductState {
  const CulturalProductLoading();

  @override
  List<Object?> get props => [];
}

class CulturalProductSuccess extends CulturalProductState {
  CulturalProductSuccess();

  @override
  List<Object?> get props => [];
}

class CulturalProductFailure extends CulturalProductState {
  final String message;

  CulturalProductFailure(this.message);

  @override
  List<Object?> get props => [message];
}
