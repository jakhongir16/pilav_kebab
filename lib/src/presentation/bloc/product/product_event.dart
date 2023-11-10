part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable{
  const ProductEvent();
}

class ProductDataEvent extends ProductEvent {
  const ProductDataEvent({required this.id});
  final String id;

  @override
  List<Object?> get props => [id];
}

class ReceiveModifierDataEvent extends ProductEvent {
  const ReceiveModifierDataEvent({required this.id});
  final String id;

  @override
  List<Object?> get props => [id];
}

class AddProductEvent extends ProductEvent {
  const AddProductEvent({required this.priceAdd, required this.incrementDigit});
  final int incrementDigit;
  final int priceAdd;

  @override
  List<Object?> get props => [incrementDigit, priceAdd];

}

class RemoveProductEvent extends ProductEvent {
  const RemoveProductEvent({required this.priceRemove, required this.decrementDigit});
  final int decrementDigit;
  final int priceRemove;

  @override
  List<Object?> get props => [decrementDigit, priceRemove];
}