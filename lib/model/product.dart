import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class ProductModel {
  String name, categoryID, productType, description;

  ProductModel({
    required this.name,
    required this.categoryID,
    required this.productType,
    required this.description
  });
  static List<ProductModel> fromList(List<dynamic> data) => data.map((e) => ProductModel.fromJson(e)).toList();

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}