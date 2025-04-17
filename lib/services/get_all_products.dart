import 'package:coffee_shop_app/helper/api.dart';
import 'package:coffee_shop_app/models/product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> jsonData = await Api().get(
      url: 'https://coffee-shop-api-sandy.vercel.app/api/v1/products',
    );
    List<ProductModel> products = [];
    for (int i = 0; i < jsonData.length; i++) {
      products.add(ProductModel.fromJson(jsonData[i]));
    }
    print(products[0].title);
    print(products[0].description);
    print(products[0].price);
    print(products[0].image);

    return products;
  }
}
