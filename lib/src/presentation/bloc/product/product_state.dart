part of 'product_bloc.dart';


class ProductState extends Equatable {
  const ProductState({
   this.modifierProduct,
   this.messageError,
   this.productIdResponse,
   this.apiStatus = ApiStatus.initial,
   this.isError,
   this.valueSelection = 0,
   this.productStatus = ProductStatus.initial,
   this.price = 0,
   this.digit = 0,
   this.index = 0,
});

  final ProductResponseWithId? productIdResponse;
  final ApiStatus apiStatus;
  final bool? isError;
  final String? messageError;
  final ModifierModel? modifierProduct;
  final int valueSelection;
  final ProductStatus productStatus;
  final int price;
  final int digit;
  final int index;
  ProductState copyWith({
    String? messageError,
    ProductResponseWithId? productIdResponse,
    ApiStatus? apiStatus,
    bool? isError,
    ModifierModel? modifierProduct,
    int? valueSelection,
    ProductStatus? productStatus,
    int? price,
    int? digit,
    int? index,
}) => ProductState(
    productIdResponse: productIdResponse ?? this.productIdResponse,
    apiStatus: apiStatus ?? this.apiStatus,
    messageError: messageError ?? this.messageError,
    isError: isError ?? this.isError,
    modifierProduct: modifierProduct ?? this.modifierProduct,
    valueSelection: valueSelection ?? this.valueSelection,
    productStatus: productStatus ?? this.productStatus,
    price: price ?? this.price,
    digit: digit ?? this.digit,
    index: index ?? this.index,
  );

  @override
  List<Object?> get props => [
    isError,
    productIdResponse,
    apiStatus,
    modifierProduct,
    messageError,
    valueSelection,
    productStatus,
    digit,
    price,
    index,
  ];
}


// enum StatusState {initial, loading, success, error}
//
// extension StatusX on StatusState {
//   bool get initial => this == StatusState.initial;
//
//   bool get isLoading => this == StatusState.loading;
//
//   bool get isSuccess => this == StatusState.success;
//
//   bool get isError => this == StatusState.error;
// }

enum ProductStatus {
  initial,
  loading,
  success,
  error,
  getModifierSuccess,
  getComboSuccess,
}

extension ProductStatusX on ProductStatus {
  bool get isInitial => this == ProductStatus.initial;

  bool get isLoading => this == ProductStatus.loading;

  bool get isSuccess => this == ProductStatus.success;

  bool get isError => this == ProductStatus.error;

  bool get getModifierSuccess => this == ProductStatus.getModifierSuccess;
  bool get getComboSuccess => this == ProductStatus.getComboSuccess;
}
