import 'package:test_youtube_riverpod_membuat/model/barang_model.dart';
import 'package:test_youtube_riverpod_membuat/model/barangs_model.dart';

abstract class BarangRepository {
  Future<Barangs> loadBarangs();

  Future<void> saveBarang(Barang barang);

  Future<void> deleteBarang(Barang barang);

  Future<Barang?> getByIdBarang(String id);

  Future<void> deleteAllBarang();
}
