part of 'database_bloc.dart';

abstract class DatabaseEvent {}

class AddProduct extends DatabaseEvent {
  final ProductIdResponse product;
  final List<Groups> combo;
  final List<GroupModifiers> modifier;

  AddProduct({
   required this.product,
   required this.combo,
   required this.modifier,
});


}

class DeleteProducts extends DatabaseEvent {
  DeleteProducts();
}

class GetProduct extends DatabaseEvent{}

class UpdateProduct extends DatabaseEvent {
  bool ? substract;
  bool ? isDelete;
  final ProductIdResponse product;
  UpdateProduct(this.product, {this.isDelete, this.substract});
}