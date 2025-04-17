import 'package:coffee_shop_app/cubits/product_cubit/product_state.dart';
import 'package:coffee_shop_app/models/product_model.dart';
import 'package:coffee_shop_app/services/get_all_products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(InitialProduct());
  List<ProductModel> products = [];
  bool isLoading = false;
  getAllProducts() async {
    isLoading = true;
    emit(LoadingProduct());

    try {
      products = await GetAllProducts().getAllProducts();
      emit(SuccessProduct());
      isLoading = false;
    } on Exception catch (e) {
      emit(
        FailureProduct(errMessage: 'Failure to Fetch Data Check you network'),
      );
      isLoading = false;
    }
  }
}
