// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'senter_history_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SenterHistoryModelAdapter extends TypeAdapter<SenterHistoryModel> {
  @override
  final int typeId = 2;

  @override
  SenterHistoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SenterHistoryModel(
      firstName: fields[0] as String,
      lastName: fields[1] as String,
      profilePicUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SenterHistoryModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.profilePicUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SenterHistoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
