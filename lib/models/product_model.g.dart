// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      productId: json['productId'] as String?,
      productName: json['productName'] as String,
      categoryModel: const CategoryModelConverter()
          .fromJson(json['categoryModel'] as Map<String, dynamic>),
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      price: json['price'] as num,
      stock: json['stock'] as num,
      discount: json['discount'] as num? ?? 0,
      featured: json['featured'] as bool? ?? false,
      avgRating: (json['avgRating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'categoryModel':
          const CategoryModelConverter().toJson(instance.categoryModel),
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'stock': instance.stock,
      'discount': instance.discount,
      'featured': instance.featured,
      'avgRating': instance.avgRating,
    };
