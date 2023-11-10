import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ploff_kebab/src/data/models/order/order_model.dart';
import 'package:ploff_kebab/src/domain/repositories/order/order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc(this.orderRepository) : super(const OrderState()) {
    on<GetOrders>(_receiveOrders);
  }
   final OrderRepository orderRepository;

  _receiveOrders(GetOrders event, Emitter<OrderState> emit) async {
    final result = await orderRepository.getOrderWithId();
    
    result.fold((error) {
      emit(state.copyWith(error: error.toString()));
    }, (right){
      emit(state.copyWith(orders: right.orders));
    });
  }
}
