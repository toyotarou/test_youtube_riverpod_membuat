import 'package:freezed_annotation/freezed_annotation.dart';

part 'barang_model.freezed.dart';

part 'barang_model.g.dart';

@freezed
class Barang with _$Barang {
  const factory Barang({
    required String id,
    required String name,
    required String description,
    @Default(false) bool completed,
  }) = _Barang;

  factory Barang.fromJson(Map<String, Object?> json) => _$BarangFromJson(json);
}
