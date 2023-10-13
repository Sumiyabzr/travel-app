// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      name: json['name'] as String,
      categoryID: json['categoryID'] as String,
      productType: json['productType'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'categoryID': instance.categoryID,
      'productType': instance.productType,
      'description': instance.description,
    };
