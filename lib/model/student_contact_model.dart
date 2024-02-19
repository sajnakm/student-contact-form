import 'package:objectbox/objectbox.dart';

@Entity()
class StudentModel {
  @Id()
  int id = 0;
  String name;
  String adress;
  String email;
  int nameclass;

  StudentModel(
      {required this.name,
      required this.adress,
      required this.email,
      required this.nameclass});
}
