import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ploff_kebab/src/data/models/combo/combo_id_response.dart';
import 'package:ploff_kebab/src/data/models/modifier/modifier_model.dart';
import 'package:ploff_kebab/src/data/models/product/product_id_response.dart';
import 'package:ploff_kebab/src/data/models/product/product_response_with_id.dart';
import 'package:ploff_kebab/src/domain/repositories/product/product_repository.dart';
import 'package:ploff_kebab/src/presentation/pages/splash/status.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(this.productRepository) : super(const ProductState()) {
  on<ProductDataEvent>(_receiveDetailProduct);
  on<ReceiveModifierDataEvent>(_receiveModifier);
  on<AddProductEvent>(_addProductCount);
  on<RemoveProductEvent>(_removeProductCount);
  }
  final ProductRepository productRepository;

  Future<void> _receiveDetailProduct(ProductDataEvent event, Emitter<ProductState> emit) async {
    emit(state.copyWith(productStatus: ProductStatus.loading));
    final result = await productRepository.productSimple(id: event.id);
    result.fold(
            (error){
              emit(
                state.copyWith(
                  isError: true,
                  messageError: 'error',
                  productStatus: ProductStatus.error,
                ),
              );
            },
            (right){
             emit(
               state.copyWith(
                productStatus: ProductStatus.success,
                 productIdResponse: right,
               ),
             );
            });
  }

   Future<void> _receiveModifier(
       ReceiveModifierDataEvent event, Emitter<ProductState> emit
       )async {
         emit(
           state.copyWith(
             productStatus: ProductStatus.loading,
           ),
         );
         final result = await productRepository.receiveModifier(id: event.id);
         result.fold(
                 (error){
                   state.copyWith(
                     isError: true,
                     messageError: 'error',
                     productStatus: ProductStatus.error,
                   );
                 },
                 (right){
                  state.copyWith(
                    productStatus: ProductStatus.success,
                    modifierProduct: right,
                  );
                 });
   }

   Future<void> _addProductCount(AddProductEvent event, Emitter<ProductState> emit) async {
    emit(
      state.copyWith(
       digit: event.incrementDigit <= 0 ? 0 : event.incrementDigit,
       price: event.priceAdd
      ),
    );
   }
   Future<void> _removeProductCount(RemoveProductEvent event, Emitter<ProductState> emit) async {
    emit(state.copyWith(
      digit: event.decrementDigit <= 0 ? 0 : event.decrementDigit,
      price: event.priceRemove <= 0 ? 0 : event.priceRemove
    ));
   }
}
