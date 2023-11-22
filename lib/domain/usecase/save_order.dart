import 'package:test_order_application/export.dart';

final class SaveOrderUseCase {
  final OrderRepository _orderRepository;

  SaveOrderUseCase({
    required OrderRepository orderRepository,
  }) : _orderRepository = orderRepository;

  Future<void> call(OrderEntity order) async {
    return _orderRepository.saveOrder(order);
  }
}
