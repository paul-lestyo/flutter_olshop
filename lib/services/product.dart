import 'networking.dart';

class ProductService {
  Future<dynamic> getProduct() async {
    NetworkHelper networkHelper = NetworkHelper(
      url: 'http://ppb.paulus-lestyo.my.id/product',
    );
    var productData = await networkHelper.getData();

    return productData;
  }
}
