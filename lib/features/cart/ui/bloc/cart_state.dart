// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';

class CartState extends Equatable {
  final List<OrderEntity>? orders;

  const CartState({
    this.orders = const <OrderEntity>[],
  });

  CartState copyWith({
    List<OrderEntity>? orders,
  }) {
    return CartState(
      orders: orders ?? this.orders,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        orders,
      ];
}
