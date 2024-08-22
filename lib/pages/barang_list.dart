import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:test_youtube_riverpod_membuat/data/module.dart';

class BarangList extends ConsumerWidget {
  const BarangList({super.key});

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final barang = ref.watch(barangListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Barang List'),
        actions: [
          IconButton(
            onPressed: () => context.push('/barang/new'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var b in barang.values)
              ListTile(
                title: Text(b.name),
                subtitle: Text(b.description),
                leading: Checkbox(
                  value: b.completed,
                  onChanged: (value) {
                    if (value != null) {
                      final newBarang = b.copyWith(completed: value);
                      ref.read(barangListProvider.notifier).save(newBarang);
                    }
                  },
                ),
                onTap: () => context.push('/barang/${b.id}'),
              ),
          ],
        ),
      ),
    );
  }
}
