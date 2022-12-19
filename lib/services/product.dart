import 'networking.dart';

class ProductService {
  Future<dynamic> getProduct() async {
    NetworkHelper networkHelper = NetworkHelper(
      url: 'http://ppb.paulus-lestyo.my.id/product',
    );
    var productData = await networkHelper.getData();

    return productData;
  }

  Future<dynamic> searchProduct(String name) async {
    NetworkHelper networkHelper = NetworkHelper(
      url: 'http://ppb.paulus-lestyo.my.id/product?search=${name}',
    );
    var productData = await networkHelper.getData();

    return productData;
  }

  Future<dynamic> searchProductByCategory(int id) async {
    NetworkHelper networkHelper = NetworkHelper(
      url: 'http://ppb.paulus-lestyo.my.id/product?category_id=${id}',
    );
    var productData = await networkHelper.getData();

    return productData;
  }
}
