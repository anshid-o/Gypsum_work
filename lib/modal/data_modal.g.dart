// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_modal.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkModalAdapter extends TypeAdapter<WorkModal> {
  @override
  final int typeId = 1;

  @override
  WorkModal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkModal(
      place: fields[1] as String,
      name: fields[2] as String,
      rooms: fields[3] as String,
      sqft: fields[4] as String,
      balaath: fields[5] as String,
      price: fields[6] as String,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, WorkModal obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.place)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.rooms)
      ..writeByte(4)
      ..write(obj.sqft)
      ..writeByte(5)
      ..write(obj.balaath)
      ..writeByte(6)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkModalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
