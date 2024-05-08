import 'package:ecomerce_admin_app/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@unfreezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    String? productId,
    required String productName,
    @CategoryModelConverter() required CategoryModel categoryModel,
    String? description,
    required String? imageUrl,
    required num price,
    required num stock,
    @Default(0) num discount,
    @Default(false) bool featured,
    @Default(0.0) double avgRating,

  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String , dynamic> json) =>
      _$ProductModelFromJson(json);
}