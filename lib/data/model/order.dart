import 'package:json_annotation/json_annotation.dart';
import 'package:test_order_application/data/model/goods.dart';
import 'package:test_order_application/export.dart';

part 'order.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
final class Order {
  @HiveField(0)
  List<Goods> goods;
  @HiveField(1)
  DateTime orderTime;
  @HiveField(2)
  int id;
  @HiveField(3)
  int tableNumber;

  Order({
    required this.tableNumber,
    required this.goods,
    required this.orderTime,
    required this.id,
  });
}
