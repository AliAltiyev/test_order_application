import 'package:test_order_application/data/data_provider/locale/locale_data_provider.dart';
import 'package:test_order_application/data/model/goods.dart';
import 'package:test_order_application/data/model/order.dart';
import 'package:test_order_application/domain/entity/goods.dart';
import 'package:test_order_application/domain/entity/order.dart';
import 'package:test_order_application/export.dart';

final class OrderRepsitoryImpl implements OrderRepository {
  final LocaleDataProvider _localeDataProvider;

  OrderRepsitoryImpl({
    required LocaleDataProvider localeDataProvider,
  }) : _localeDataProvider = localeDataProvider;

  @override
  Future<void> deleteAllOrders() async {
    await _localeDataProvider.removeAllOrders();
  }

  @override
  Future<void> deleteOrderById(OrderEntity orderEntity) async {
    final Order data = OrderMapper().toModel(orderEntity);
    await _localeDataProvider.removeOrder(data);
  }

  @override
  Future<List<OrderEntity>> getAllOrders() async {
    final List<Order> data = _localeDataProvider.getAllGoods();
    return data.map((Order e) => OrderMapper().toEntity(e)).toList();
  }

  @override
  Future<void> saveOrder(OrderEntity orderEntity) async {
    _localeDataProvider.saveOrder(OrderMapper().toModel(orderEntity));
  }

  @override
  List<GoodsEntity> getAllGoods() {
    return _localeDataProvider.goods.map((
      Goods element,
    ) {
      return OrderMapper().goodsToEntity(element);
    }).toList();
  }
}
