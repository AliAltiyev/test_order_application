import 'package:test_order_application/data/mapper/base.dart';
import 'package:test_order_application/data/model/goods.dart';
import 'package:test_order_application/data/model/order.dart';
import 'package:test_order_application/domain/entity/goods.dart';
import 'package:test_order_application/domain/entity/order.dart';

final class OrderMapper extends BaseMapper<OrderEntity, Order> {
  @override
  OrderEntity toEntity(Order m) {
    return OrderEntity(
      id: m.id,
      goods: m.goods.map(goodsToEntity).toList(),
      tableNumber: m.tableNumber,
      orderTime: m.orderTime,
    );
  }

  @override
  Order toModel(OrderEntity e) {
    return Order(
      id: e.id,
      goods: e.goods.map(goodsToModel).toList(),
      tableNumber: e.tableNumber,
      orderTime: e.orderTime,
    );
  }

  GoodsEntity goodsToEntity(Goods goods) {
    return GoodsEntity(
      group: goods.group,
      quantity: goods.quantity,
      id: goods.id,
      imagePath: goods.imagePath,
      price: goods.price,
      name: goods.name,
    );
  }

  Goods goodsToModel(GoodsEntity goods) {
    return Goods(
      group: goods.group,
      quantity: goods.quantity,
      id: goods.id,
      imagePath: goods.imagePath,
      price: goods.price,
      name: goods.name,
    );
  }
}
