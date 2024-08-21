import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:test_youtube_riverpod_membuat/data/repository/barangs.dart';
import 'package:test_youtube_riverpod_membuat/data/source/files.dart';
import 'package:test_youtube_riverpod_membuat/model/barang_model.dart';
import 'package:test_youtube_riverpod_membuat/model/barangs_model.dart';

class BarangsImplementation extends BarangRepository {
  BarangsImplementation(this.files);

  final Files files;
  late final String path = 'barang.json';

  ///
  @override
  Future<void> deleteAllBarang() async {
    files.remove(path);
  }

  ///
  @override
  Future<void> deleteBarang(Barang barang) async {
    final barangs = await loadBarangs();
    final newBarang =
        barangs.values.where((element) => element.id != barang.id).toList();
    await files.write(path, jsonEncode(Barangs(values: newBarang).toJson()));
  }

  ///
  @override
  Future<Barang?> getByIdBarang(String id) async {
    final barangs = await loadBarangs();
    return barangs.values.firstWhereOrNull((element) => element.id == id);
  }

  ///
  @override
  Future<Barangs> loadBarangs() async {
    final content = await files.read(path);
    if (content == null) return const Barangs(values: []);
    return Barangs.fromJson(jsonDecode(content));
  }

  ///
  @override
  Future<void> saveBarang(Barang barang) async {
    final barangs = await loadBarangs();
    final newBarang =
        barangs.values.where((element) => element.id != barang.id).toList();
    newBarang.add(barang);
    await files.write(path, jsonEncode(Barangs(values: newBarang).toJson()));
  }
}
