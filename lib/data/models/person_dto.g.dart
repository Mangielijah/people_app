// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonDTOAdapter extends TypeAdapter<PersonDto> {
  @override
  final int typeId = 0;

  @override
  PersonDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonDto(
      id: fields[0] as int,
      name: fields[1] as String,
      profile_path: fields[2] as String,
      popularity: fields[3] as num,
      biography: fields[4] as String?,
      gender: fields[5] as int?,
      birthday: fields[6] as String?,
      known_for_department: fields[7] as String?,
      deathday: fields[8] as String?,
      also_known_as: (fields[9] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PersonDto obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.profile_path)
      ..writeByte(3)
      ..write(obj.popularity)
      ..writeByte(4)
      ..write(obj.biography)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.birthday)
      ..writeByte(7)
      ..write(obj.known_for_department)
      ..writeByte(8)
      ..write(obj.deathday)
      ..writeByte(9)
      ..write(obj.also_known_as);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonDto _$PersonDtoFromJson(Map<String, dynamic> json) => PersonDto(
      id: json['id'] as int,
      name: json['name'] as String,
      profile_path: json['profile_path'] as String,
      popularity: json['popularity'] as num,
      biography: json['biography'] as String?,
      gender: json['gender'] as int?,
      birthday: json['birthday'] as String?,
      known_for_department: json['known_for_department'] as String?,
      deathday: json['deathday'] as String?,
      also_known_as: (json['also_known_as'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PersonDtoToJson(PersonDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'profile_path': instance.profile_path,
    'popularity': instance.popularity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('biography', instance.biography);
  writeNotNull('gender', instance.gender);
  writeNotNull('birthday', instance.birthday);
  writeNotNull('known_for_department', instance.known_for_department);
  writeNotNull('deathday', instance.deathday);
  writeNotNull('also_known_as', instance.also_known_as);
  return val;
}
