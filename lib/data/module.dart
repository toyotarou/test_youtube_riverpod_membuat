import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_youtube_riverpod_membuat/data/repository/module.dart';
import 'package:test_youtube_riverpod_membuat/model/barang_model.dart';
import 'package:test_youtube_riverpod_membuat/model/barangs_model.dart';

class BarangStateNotifier extends StateNotifier<Barangs> {
  BarangStateNotifier(this.ref) : super(const Barangs(values: [])) {
    loadBarangs();
  }

  final Ref ref;
  late final getBarangs = ref.read(barangProvider);

  ///
  Future<void> loadBarangs() async {
    state = await getBarangs.loadBarangs();
  }

  ///
  Future<void> save(Barang barang) async {
    await getBarangs.saveBarang(barang);
    await loadBarangs();
  }

  ///
  Future<Barang?> get(String id) async {
    return await getBarangs.getByIdBarang(id);
  }

  ///
  Future<void> delete(Barang barang) async {
    await getBarangs.deleteBarang(barang);
    await loadBarangs();
  }
}

///
final barangListState = StateNotifierProvider<BarangStateNotifier, Barangs>(
  (ref) => BarangStateNotifier(ref),
);
