abstract class ProductState {}

class InitialProduct extends ProductState {}

class LoadingProduct extends ProductState {}

class SuccessProduct extends ProductState {}

class FailureProduct extends ProductState {
  final String errMessage;

  FailureProduct({required this.errMessage});
}
