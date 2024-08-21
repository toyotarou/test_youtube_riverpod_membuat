import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_youtube_riverpod_membuat/data/source/files.dart';
import 'package:test_youtube_riverpod_membuat/data/source/files_implementation.dart';

final filesProvider = Provider<Files>((ref) {
  return FilesImplementation();
});
