import 'package:test_order_application/data/model/goods.dart';
import 'package:test_order_application/data/model/order.dart';

/// The `LocaleDataProvider` class is an abstract class that defines the interface for managing orders in a localized data source.
abstract class LocaleDataProvider {
  ///Initilize
  Future<void> initBox();

  /// Saves the given order to the data source.
  ///
  /// @param order The order to be saved.
  Future<void> saveOrder(Order order);

  /// Removes the given order from the data source.
  ///
  /// @param order The order to be removed.
  Future<void> removeOrder(Order order);

  /// Removes all orders from the data source.
  Future<void> removeAllOrders();

  /// Retrieves all orders from the data source.
  ///
  /// @return A list of all orders.
  List<Order> getAllGoods();

  List<Goods> get goods;
}
