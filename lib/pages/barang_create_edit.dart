// import 'package:collection/collection.dart';
//

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_youtube_riverpod_membuat/data/module.dart';
import 'package:test_youtube_riverpod_membuat/model/barang_model.dart';
import 'package:uuid/uuid.dart';

class BarangCreateEdit extends ConsumerStatefulWidget {
  const BarangCreateEdit({super.key, this.id});

  final String? id;

  @override
  ConsumerState<BarangCreateEdit> createState() => _BarangCreateEditState();
}

class _BarangCreateEditState extends ConsumerState<BarangCreateEdit> {
  final _formKey = GlobalKey<FormState>();

  final titleEditingController = TextEditingController();
  final descriptionEditingController = TextEditingController();

  bool isCompleted = false;

  var uuid = const Uuid();

  bool updateValueSet = false;

  ///
  @override
  Widget build(BuildContext context) {
    if (updateValueSet == false) {
      Future(() {
        ref.read(barangListProvider.notifier).get(widget.id!).then((value) {
          if (value != null) {
            titleEditingController.text = value.name;
            descriptionEditingController.text = value.description;

            setState(() => isCompleted = value.completed);
          }
        });
      });

      updateValueSet = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          (widget.id != null) ? 'Barang Update' : 'Barang Create',
        ),
        actions: [
          if (widget.id != null) ...[
            IconButton(
              onPressed: () async {
                final router = GoRouter.of(context);

                final confirm = await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('delete?'),
                      content: const Text('delete?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: const Text('cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: const Text('confirm'),
                        ),
                      ],
                    );
                  },
                );

                if (confirm) {
                  ref
                      .read(barangListProvider.notifier)
                      .get(widget.id!)
                      .then((value) {
                    if (value != null) {
                      ref.read(barangListProvider.notifier).delete(value);

                      if (router.canPop()) router.pop();
                    }
                  });
                }
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: titleEditingController,
                decoration: const InputDecoration(labelText: 'title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'title is required.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionEditingController,
                maxLines: 3,
                decoration: const InputDecoration(labelText: 'description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'description is required.';
                  } else if (value.length < 3) {
                    return 'description over 3 character.';
                  }

                  return null;
                },
              ),
              CheckboxListTile(
                value: isCompleted,
                onChanged: (value) {
                  if (mounted) {
                    setState(() {
                      isCompleted = value!;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            var barang = Barang(
              id: widget.id ?? uuid.v4(),
              name: titleEditingController.text,
              description: descriptionEditingController.text,
              completed: isCompleted,
            );

            ref.read(barangListProvider.notifier).save(barang);

            context.pop();
          }
        },
        label: const Text('Save'),
      ),
    );
  }
}
