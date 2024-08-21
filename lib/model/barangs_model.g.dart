// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barangs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarangsImpl _$$BarangsImplFromJson(Map<String, dynamic> json) =>
    _$BarangsImpl(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Barang.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BarangsImplToJson(_$BarangsImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
    };
