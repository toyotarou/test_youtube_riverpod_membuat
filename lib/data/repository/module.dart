import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_youtube_riverpod_membuat/data/repository/barangs.dart';
import 'package:test_youtube_riverpod_membuat/data/repository/barangs_implementation.dart';
import 'package:test_youtube_riverpod_membuat/data/source/module.dart';

final barangProvider = Provider<BarangRepository>((ref) {
  return BarangsImplementation(ref.read(filesProvider));
});
