import 'package:test_order_application/domain/entity/goods.dart';
import 'package:test_order_application/export.dart';

class FetchAllGoodsUseCase {
  final OrderRepository _orderRepository;

  /// Use case responsible for fetching all goods from the [OrderRepository]
  /// and returning them as a list of [GoodsEntity] objects.
  ///
  /// Example Usage:
  /// ```dart
  /// final orderRepository = OrderRepository();
  /// final fetchAllGoodsUseCase = FetchAllGoodsUseCase(orderRepository: orderRepository);
  /// final goodsList = fetchAllGoodsUseCase.call();
  /// print(goodsList);
  /// ```
  FetchAllGoodsUseCase({
    required OrderRepository orderRepository,
  }) : _orderRepository = orderRepository;

  /// Fetches all goods from the [OrderRepository] and returns them as a list of [GoodsEntity] objects.
  List<GoodsEntity> call() => _orderRepository.getAllGoods();
}
