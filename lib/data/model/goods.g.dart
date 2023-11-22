// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoodsAdapter extends TypeAdapter<Goods> {
  @override
  final int typeId = 0;

  @override
  Goods read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Goods(
      quantity: fields[5] as int,
      imagePath: fields[4] as String,
      id: fields[0] as int,
      group: fields[1] as String,
      name: fields[2] as String,
      price: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Goods obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.group)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.imagePath)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoodsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goods _$GoodsFromJson(Map<String, dynamic> json) => Goods(
      quantity: json['quantity'] as int? ?? 0,
      imagePath: json['imagePath'] as String,
      id: json['id'] as int,
      group: json['group'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$GoodsToJson(Goods instance) => <String, dynamic>{
      'id': instance.id,
      'group': instance.group,
      'name': instance.name,
      'price': instance.price,
      'imagePath': instance.imagePath,
      'quantity': instance.quantity,
    };
