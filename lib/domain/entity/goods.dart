import 'package:test_order_application/export.dart';

final class GoodsEntity extends Equatable {
  final String group;
  final String name;
  final double price;
  final String imagePath;
  final int id;
  final int quantity;

  const GoodsEntity({
    this.quantity = 0,
    required this.group,
    required this.id,
    required this.imagePath,
    required this.price,
    required this.name,
  });
  @override
  List<Object?> get props => <Object?>[
        name,
        group,
        id,
        price,
        imagePath,
        quantity,
      ];
}
