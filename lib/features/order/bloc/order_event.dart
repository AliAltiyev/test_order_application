part of 'order_bloc.dart';

abstract class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => <Object>[];
}

class MakeOrderEvent extends OrderEvent {
  final OrderEntity order;

  const MakeOrderEvent({
    required this.order,
  });
}

final class FetchAllGoodsEvent extends OrderEvent {}

final class IncreamentProductCount extends OrderEvent {
  final int index;

  const IncreamentProductCount({
    required this.index,
  });
}

final class DecreamentProductCountEvent extends OrderEvent {
  final int index;

  const DecreamentProductCountEvent({
    required this.index,
  });
}
