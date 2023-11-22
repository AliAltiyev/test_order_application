import 'dart:async';

import 'package:test_order_application/export.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final FetchAllOrders _fetchAllOrders;

  /// The CartBloc class is a BLoC (Business Logic Component) that manages the state of a shopping cart.
  /// It handles events related to fetching all cart items and updates the state accordingly.
  ///
  /// Example Usage:
  /// ```dart
  /// // Create an instance of FetchAllOrders
  /// FetchAllOrders fetchAllOrders = FetchAllOrders();
  ///
  /// // Create an instance of CartBloc
  /// CartBloc cartBloc = CartBloc(fetchAllOrders: fetchAllOrders);
  ///
  /// // Listen to state changes
  /// cartBloc.stream.listen((state) {
  ///   // Handle state changes
  /// });
  ///
  /// // Dispatch an event to fetch all cart items
  /// cartBloc.add(FetchAllCartItemsEvent());
  /// ```
  CartBloc({required FetchAllOrders fetchAllOrders})
      : _fetchAllOrders = fetchAllOrders,
        super(const CartState()) {
    on<FetchAllCartItemsEvent>(onFetchAllCartItemsEvent);
    add(FetchAllCartItemsEvent());
  }

  /// Handles the `FetchAllCartItemsEvent` by fetching all cart items using the `FetchAllOrders` use case.
  /// It then updates the state of the cart with the fetched data.
  Future<FutureOr<void>> onFetchAllCartItemsEvent(
    FetchAllCartItemsEvent event,
    Emitter<CartState> emit,
  ) async {
    final List<OrderEntity> data = await _fetchAllOrders();
    emit(state.copyWith(orders: data));
  }
}
