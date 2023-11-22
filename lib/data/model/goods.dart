import 'package:json_annotation/json_annotation.dart';
import 'package:test_order_application/export.dart';

part 'goods.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Goods {
  @HiveField(0)
  int id;
  @HiveField(1)
  String group;
  @HiveField(2)
  String name;
  @HiveField(3)
  double price;
  @HiveField(4)
  String imagePath;
  @HiveField(5)
  int quantity;
  Goods({
    this.quantity = 0,
    required this.imagePath,
    required this.id,
    required this.group,
    required this.name,
    required this.price,
  });

  factory Goods.fromJson(Map<String, dynamic> json) {
    return _$GoodsFromJson(json);
  }
}
