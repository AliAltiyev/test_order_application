part of 'order_bloc.dart';

class OrderState extends Equatable {
  final List<GoodsEntity> goods;

  const OrderState({
    this.goods = const <GoodsEntity>[],
  });

  // Implementing the copyWith method
  OrderState copyWith({
    List<GoodsEntity>? goods,
  }) {
    return OrderState(
      goods: goods ?? this.goods,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        goods,
      ];
}
