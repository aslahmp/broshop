import 'dart:convert';

import 'package:broshop_app/app/data/model/product_model.dart';
import 'package:flutter/services.dart';

import '../../../../infrastructure/networking/index.dart';
import 'i_product_repository.dart';

class ProductRepository implements IProductRepository {
  final _helper = ApiBaseHelper();

  @override
  Future<Result> createProduct(ProductModel productModel) async {
    try {
      await _helper.post(
          url: Uri.parse(APIEndPoints.urlString(EndPoints.product)),
          body: productModel.toJson());
      return Success('');
    } catch (e) {
      return Failure(e.toString());
    }
  }

  @override
  Future<Result> updateProduct(ProductModel productModel) async {
    try {
      await _helper.put(
          url: Uri.parse(APIEndPoints.urlString(EndPoints.product)),
          body: productModel.toJson());
      return Success('');
    } catch (e) {
      return Failure(e.toString());
    }
  }

  @override
  Future<Result> getProduct() async {
    try {
      var result = await _helper.get(
        url: Uri.parse(APIEndPoints.urlString(EndPoints.product)),
      );
      var products = List.from(result['data'])
          .map((e) => ProductModel.fromJson(e))
          .toList();
      var productsJson = await getProductsFromJson();
      products.addAll(productsJson);

      return Success(products);
    } catch (e) {
      return Failure(e.toString());
    }
  }

  Future<List<ProductModel>> getProductsFromJson() async {
    final String response = await rootBundle.loadString('assets/products.json');
    final data = await json.decode(response);
    var products =
        List.from(data['data']).map((e) => ProductModel.fromJson(e)).toList();
    return products;
  }

  @override
  Future<Result> delete(String id) async {
    try {
      var result = await _helper.delete(
        url: Uri.parse('${APIEndPoints.urlString(EndPoints.product)}/$id'),
      );
      return Success(result.toString());
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
