import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:student_contact_form/controller/student_contact_provider.dart';
import 'package:student_contact_form/model/student_contact_model.dart';
import 'package:student_contact_form/view/widget/showmodel_bottomsheet.dart';

class StudentContactForm extends ConsumerWidget {
  const StudentContactForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<StudentModel> students = ref.watch(studentContactProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("StudentContactApp"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(students[index].name),
                    Text(students[index].adress),
                    Text(students[index].email),
                    Text(students[index].nameclass.toString()),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      ref
                          .read(studentContactProvider.notifier)
                          .studentRemove(students[index].id);
                    },
                    icon:const Icon(Icons.delete))
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) =>const SizedBox(
          height: 20,
        ),
        itemCount: students.length,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          bottom_sheet(context: context, ref: ref);
        },
        label: const Text("Add"),
      ),
    );
  }
}
