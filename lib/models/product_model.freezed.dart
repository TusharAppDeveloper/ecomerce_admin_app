// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String? get productId => throw _privateConstructorUsedError;
  set productId(String? value) => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  set productName(String value) => throw _privateConstructorUsedError;
  @CategoryModelConverter()
  CategoryModel get categoryModel => throw _privateConstructorUsedError;
  @CategoryModelConverter()
  set categoryModel(CategoryModel value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String? value) => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  set price(num value) => throw _privateConstructorUsedError;
  num get stock => throw _privateConstructorUsedError;
  set stock(num value) => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  set discount(num value) => throw _privateConstructorUsedError;
  bool get featured => throw _privateConstructorUsedError;
  set featured(bool value) => throw _privateConstructorUsedError;
  double get avgRating => throw _privateConstructorUsedError;
  set avgRating(double value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String? productId,
      String productName,
      @CategoryModelConverter() CategoryModel categoryModel,
      String? description,
      String? imageUrl,
      num price,
      num stock,
      num discount,
      bool featured,
      double avgRating});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = null,
    Object? categoryModel = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = null,
    Object? stock = null,
    Object? discount = null,
    Object? featured = null,
    Object? avgRating = null,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryModel: null == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productId,
      String productName,
      @CategoryModelConverter() CategoryModel categoryModel,
      String? description,
      String? imageUrl,
      num price,
      num stock,
      num discount,
      bool featured,
      double avgRating});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = null,
    Object? categoryModel = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = null,
    Object? stock = null,
    Object? discount = null,
    Object? featured = null,
    Object? avgRating = null,
  }) {
    return _then(_$ProductModelImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryModel: null == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {this.productId,
      required this.productName,
      @CategoryModelConverter() required this.categoryModel,
      this.description,
      required this.imageUrl,
      required this.price,
      required this.stock,
      this.discount = 0,
      this.featured = false,
      this.avgRating = 0.0});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  String? productId;
  @override
  String productName;
  @override
  @CategoryModelConverter()
  CategoryModel categoryModel;
  @override
  String? description;
  @override
  String? imageUrl;
  @override
  num price;
  @override
  num stock;
  @override
  @JsonKey()
  num discount;
  @override
  @JsonKey()
  bool featured;
  @override
  @JsonKey()
  double avgRating;

  @override
  String toString() {
    return 'ProductModel(productId: $productId, productName: $productName, categoryModel: $categoryModel, description: $description, imageUrl: $imageUrl, price: $price, stock: $stock, discount: $discount, featured: $featured, avgRating: $avgRating)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {String? productId,
      required String productName,
      @CategoryModelConverter() required CategoryModel categoryModel,
      String? description,
      required String? imageUrl,
      required num price,
      required num stock,
      num discount,
      bool featured,
      double avgRating}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String? get productId;
  set productId(String? value);
  @override
  String get productName;
  set productName(String value);
  @override
  @CategoryModelConverter()
  CategoryModel get categoryModel;
  @CategoryModelConverter()
  set categoryModel(CategoryModel value);
  @override
  String? get description;
  set description(String? value);
  @override
  String? get imageUrl;
  set imageUrl(String? value);
  @override
  num get price;
  set price(num value);
  @override
  num get stock;
  set stock(num value);
  @override
  num get discount;
  set discount(num value);
  @override
  bool get featured;
  set featured(bool value);
  @override
  double get avgRating;
  set avgRating(double value);
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
