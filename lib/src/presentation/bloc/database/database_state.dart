part of 'database_bloc.dart';

class DatabaseState extends Equatable {
  const DatabaseState({
  this.products = const [],
  this.status = DatabaseStatus.initial,
  });
  final List<Products> products;
  final DatabaseStatus status;

  DatabaseState copyWith({
   List<Products>? products,
   DatabaseStatus? status,
}) {
    return DatabaseState(
      status: status ?? this.status,
      products: products ?? this.products,
    );
  }

  @override
  List<Object?> get props => [
    products,
    status,
  ];
}
