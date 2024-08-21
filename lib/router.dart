import 'package:go_router/go_router.dart';
import 'package:test_youtube_riverpod_membuat/pages/barang_create_edit.dart';
import 'package:test_youtube_riverpod_membuat/pages/barang_list.dart';

final router = GoRouter(
  initialLocation: '/barang',
  routes: [
    GoRoute(
      path: '/barang',
      builder: (context, state) => const BarangList(),
      routes: [
        GoRoute(
          path: 'new',
          builder: (context, state) => const BarangCreateEdit(),
        ),
        GoRoute(
          path: ':id',
          builder: (context, state) => BarangCreateEdit(
            id: state.pathParameters['id'],
          ),
        ),
      ],
    ),
  ],
);
