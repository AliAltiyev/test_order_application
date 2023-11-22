import 'package:test_order_application/domain/entity/goods.dart';
import 'package:test_order_application/export.dart';

final class OrderEntity extends Equatable {
  final int id;
  final List<GoodsEntity> goods;
  final int tableNumber;
  final DateTime orderTime;

  const OrderEntity({
    required this.id,
    required this.goods,
    required this.tableNumber,
    required this.orderTime,
  });
  @override
  List<Object?> get props => <Object?>[
        id,
        goods,
        tableNumber,
        orderTime,
      ];
}
