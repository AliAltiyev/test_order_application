import 'dart:async';

import 'package:test_order_application/domain/usecase/save_order.dart';
import 'package:test_order_application/export.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final FetchAllGoodsUseCase _fetchAllGoodsUseCase;
  final SaveOrderUseCase _saveOrderUseCase;

  /// The `OrderBloc` class is a bloc (business logic component) that handles the
  /// state management for the order feature in a Flutter application.
  /// It extends the `Bloc` class from the `flutter_bloc` package and implements
  ///  the `OrderEvent` and `OrderState` classes.
  ///
  /// Example Usage:
  /// ```dart
  /// final orderBloc = OrderBloc(fetchAllGoodsUseCase: FetchAllGoodsUseCase());
  /// ```
  OrderBloc({
    required FetchAllGoodsUseCase fetchAllGoodsUseCase,
    required SaveOrderUseCase saveOrderUseCase,
  })  : _fetchAllGoodsUseCase = fetchAllGoodsUseCase,
        _saveOrderUseCase = saveOrderUseCase,
        super(const OrderState()) {
    on<FetchAllGoodsEvent>(onFetchAllGoodsEvent);
    on<MakeOrderEvent>(onMakeOrderEvent);

    add(FetchAllGoodsEvent());
  }

  /// This method is called when a `FetchAllGoodsEvent` is dispatched.
  /// It retrieves a list of `GoodsEntity` objects using the `fetchAllGoodsUseCase`
  ///  and emits an `OrderLoaded` state with the retrieved goods.
  FutureOr<void> onFetchAllGoodsEvent(
    FetchAllGoodsEvent event,
    Emitter<OrderState> emit,
  ) {
    final List<GoodsEntity> goods = _fetchAllGoodsUseCase.call();
    emit(OrderState(goods: goods));
  }

  FutureOr<void> onMakeOrderEvent(
    MakeOrderEvent event,
    Emitter<OrderState> emit,
  ) async {
    await _saveOrderUseCase(event.order);
  }
}
