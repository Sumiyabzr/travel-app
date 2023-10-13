import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class CategoryModel {
  String name, categoryID;

  CategoryModel({
    required this.name,
    required this.categoryID
  });
  static List<CategoryModel> fromList(List<dynamic> data) => data.map((e) => CategoryModel.fromJson(e)).toList();

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}