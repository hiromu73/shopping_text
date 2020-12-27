

import 'package:flutter/foundation.dart';

///複数の共有するデータ
///データが必要となる各オブジェクトにデータを流す
///データモデルを定義して,providerで流し,ChangeNotifierProviderで提供する

enum Category {
  all,
  accessories,
  clothing,
  home,
}

///各インスタンスは、販売する製品を記述
class Product {
  const Product({
    @required this.category,
    @required this.id,
    @required this.isFeatured,
    @required this.name,
    @required this.price,
}) : assert(category != null),//assert = 指定した値出なければエラーが帰ってくる
        assert(id != null),
        assert(isFeatured != null),
        assert(name != null),
        assert(price != null);

  final Category category;
  final int  id;
  final bool isFeatured;
  final String name;
  final int price;

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => '$name (id=$id)';

}