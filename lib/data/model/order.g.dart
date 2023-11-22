// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderAdapter extends TypeAdapter<Order> {
  @override
  final int typeId = 1;

  @override
  Order read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Order(
      tableNumber: fields[3] as int,
      goods: (fields[0] as List).cast<Goods>(),
      orderTime: fields[1] as DateTime,
      id: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Order obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.goods)
      ..writeByte(1)
      ..write(obj.orderTime)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.tableNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      tableNumber: json['tableNumber'] as int,
      goods: (json['goods'] as List<dynamic>)
          .map((e) => Goods.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderTime: DateTime.parse(json['orderTime'] as String),
      id: json['id'] as int,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'goods': instance.goods,
      'orderTime': instance.orderTime.toIso8601String(),
      'id': instance.id,
      'tableNumber': instance.tableNumber,
    };
