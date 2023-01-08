import 'package:broshop_app/app/data/model/product_model.dart';

import '../../../../infrastructure/networking/index.dart';

abstract class IProductRepository {
  Future<Result> createProduct(ProductModel productModel);
  Future<Result> updateProduct(ProductModel productModel);
  Future<Result> getProduct();
  Future<Result> delete(String id);
}
