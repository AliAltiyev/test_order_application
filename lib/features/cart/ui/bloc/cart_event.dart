part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => <Object>[];
}

final class FetchAllCartItemsEvent extends CartEvent {}
