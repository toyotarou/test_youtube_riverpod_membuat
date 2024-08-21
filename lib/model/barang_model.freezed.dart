// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barang_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Barang _$BarangFromJson(Map<String, dynamic> json) {
  return _Barang.fromJson(json);
}

/// @nodoc
mixin _$Barang {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangCopyWith<Barang> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangCopyWith<$Res> {
  factory $BarangCopyWith(Barang value, $Res Function(Barang) then) =
      _$BarangCopyWithImpl<$Res, Barang>;
  @useResult
  $Res call({String id, String name, String description, bool completed});
}

/// @nodoc
class _$BarangCopyWithImpl<$Res, $Val extends Barang>
    implements $BarangCopyWith<$Res> {
  _$BarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangImplCopyWith<$Res> implements $BarangCopyWith<$Res> {
  factory _$$BarangImplCopyWith(
          _$BarangImpl value, $Res Function(_$BarangImpl) then) =
      __$$BarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String description, bool completed});
}

/// @nodoc
class __$$BarangImplCopyWithImpl<$Res>
    extends _$BarangCopyWithImpl<$Res, _$BarangImpl>
    implements _$$BarangImplCopyWith<$Res> {
  __$$BarangImplCopyWithImpl(
      _$BarangImpl _value, $Res Function(_$BarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_$BarangImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangImpl implements _Barang {
  const _$BarangImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.completed = false});

  factory _$BarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey()
  final bool completed;

  @override
  String toString() {
    return 'Barang(id: $id, name: $name, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      __$$BarangImplCopyWithImpl<_$BarangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangImplToJson(
      this,
    );
  }
}

abstract class _Barang implements Barang {
  const factory _Barang(
      {required final String id,
      required final String name,
      required final String description,
      final bool completed}) = _$BarangImpl;

  factory _Barang.fromJson(Map<String, dynamic> json) = _$BarangImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
