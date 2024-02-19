import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_contact_form/service/object_box_service.dart';
import 'package:student_contact_form/view/page/student_contact_form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StudentObjectBox.create();
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: StudentContactForm(),
    );
  }
}
