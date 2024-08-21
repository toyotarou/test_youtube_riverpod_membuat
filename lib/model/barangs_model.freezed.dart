// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barangs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Barangs _$BarangsFromJson(Map<String, dynamic> json) {
  return _Barangs.fromJson(json);
}

/// @nodoc
mixin _$Barangs {
  List<Barang> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangsCopyWith<Barangs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangsCopyWith<$Res> {
  factory $BarangsCopyWith(Barangs value, $Res Function(Barangs) then) =
      _$BarangsCopyWithImpl<$Res, Barangs>;
  @useResult
  $Res call({List<Barang> values});
}

/// @nodoc
class _$BarangsCopyWithImpl<$Res, $Val extends Barangs>
    implements $BarangsCopyWith<$Res> {
  _$BarangsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Barang>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangsImplCopyWith<$Res> implements $BarangsCopyWith<$Res> {
  factory _$$BarangsImplCopyWith(
          _$BarangsImpl value, $Res Function(_$BarangsImpl) then) =
      __$$BarangsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Barang> values});
}

/// @nodoc
class __$$BarangsImplCopyWithImpl<$Res>
    extends _$BarangsCopyWithImpl<$Res, _$BarangsImpl>
    implements _$$BarangsImplCopyWith<$Res> {
  __$$BarangsImplCopyWithImpl(
      _$BarangsImpl _value, $Res Function(_$BarangsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$BarangsImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Barang>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangsImpl extends _Barangs {
  const _$BarangsImpl({final List<Barang> values = const []})
      : _values = values,
        super._();

  factory _$BarangsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangsImplFromJson(json);

  final List<Barang> _values;
  @override
  @JsonKey()
  List<Barang> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'Barangs(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangsImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangsImplCopyWith<_$BarangsImpl> get copyWith =>
      __$$BarangsImplCopyWithImpl<_$BarangsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangsImplToJson(
      this,
    );
  }
}

abstract class _Barangs extends Barangs {
  const factory _Barangs({final List<Barang> values}) = _$BarangsImpl;
  const _Barangs._() : super._();

  factory _Barangs.fromJson(Map<String, dynamic> json) = _$BarangsImpl.fromJson;

  @override
  List<Barang> get values;
  @override
  @JsonKey(ignore: true)
  _$$BarangsImplCopyWith<_$BarangsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
