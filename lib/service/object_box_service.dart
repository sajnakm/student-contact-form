// ignore_for_file: non_constant_identifier_names

import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student_contact_form/model/student_contact_model.dart';
import 'package:student_contact_form/objectbox.g.dart';

class StudentObjectBox {
  late final Store store;
  static late final Box<StudentModel> studentObjectList;
  StudentObjectBox._create(this.store) {
    studentObjectList = store.box<StudentModel>();
  }

  static Future<StudentObjectBox> create() async {
    final docDir = await getApplicationDocumentsDirectory();
    final Store =
        await openStore(directory: join(docDir.path, "studentObjectList"));
    return StudentObjectBox._create(Store);
  }
}
