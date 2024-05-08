import 'package:freezed_annotation/freezed_annotation.dart';

class CategoryModel {
  String name;

  CategoryModel(this.name);

  Map<String , dynamic> toJson() => <String,dynamic> { 'name' : name};

  factory CategoryModel.fromJson(Map<String,dynamic> json) => CategoryModel(json['name']);

  @override
  String toString() {

    return 'CategoryModel{name: $name}';
  }
}

class CategoryModelConverter implements JsonConverter<CategoryModel , Map<String , dynamic>>{
  const CategoryModelConverter();

  @override
  CategoryModel fromJson(Map<String, dynamic> json) {
    return CategoryModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CategoryModel object) {
    return object.toJson();
  }

}