// import 'package:flutter_riverpod/flutter_riverpod.dart';
//

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_youtube_riverpod_membuat/data/source/files.dart';
import 'package:test_youtube_riverpod_membuat/data/source/files_implementation.dart';

part 'module.g.dart';

// final filesProvider = Provider<Files>((ref) {
//   return FilesImplementation();
// });

@riverpod
Files files(FilesRef ref) {
  return FilesImplementation();
}
