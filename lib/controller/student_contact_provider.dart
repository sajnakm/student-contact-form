import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:student_contact_form/model/student_contact_model.dart';
import 'package:student_contact_form/service/object_box_service.dart';

part 'student_contact_provider.g.dart';

@riverpod
class StudentContact extends _$StudentContact {
  List<StudentModel> build() {
    return StudentObjectBox.studentObjectList.getAll();
  }

  void studentAdd(StudentModel userData) {
    StudentObjectBox.studentObjectList.put(userData);
    state = StudentObjectBox.studentObjectList.getAll();
  }

  void studentRemove(int id) {
    StudentObjectBox.studentObjectList.remove(id);
    state = StudentObjectBox.studentObjectList.getAll();
  }

  
  
}
