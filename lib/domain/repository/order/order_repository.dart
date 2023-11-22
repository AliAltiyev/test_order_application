import 'package:test_order_application/domain/entity/goods.dart';
import 'package:test_order_application/domain/entity/order.dart';

abstract class OrderRepository {
  Future<void> saveOrder(OrderEntity orderEntiy);
  Future<void> deleteOrderById(OrderEntity orderEntiy);
  Future<void> deleteAllOrders();
  Future<List<OrderEntity>> getAllOrders();
  List<GoodsEntity> getAllGoods();
}
