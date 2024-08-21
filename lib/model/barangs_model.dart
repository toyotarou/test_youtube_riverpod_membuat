import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_youtube_riverpod_membuat/model/barang_model.dart';

part 'barangs_model.freezed.dart';

part 'barangs_model.g.dart';

@freezed
class Barangs with _$Barangs {
  const factory Barangs({
    @Default([]) List<Barang> values,
  }) = _Barangs;

  const Barangs._();

  List<Barang> get completed {
    return values.where((barang) => barang.completed).toList();
  }

  List<Barang> get uncompleted {
    return values.where((barang) => !barang.completed).toList();
  }

  factory Barangs.fromJson(Map<String, Object?> json) =>
      _$BarangsFromJson(json);
}
