import 'package:test_order_application/export.dart';

final class FetchAllOrders {
  final OrderRepository _orderRepository;

  FetchAllOrders({
    required OrderRepository orderRepository,
  }) : _orderRepository = orderRepository;

  Future<List<OrderEntity>> call() async {
    return await _orderRepository.getAllOrders();
  }
}
