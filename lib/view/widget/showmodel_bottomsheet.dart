import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_contact_form/controller/student_contact_provider.dart';
import 'package:student_contact_form/model/student_contact_model.dart';

Future<dynamic> bottom_sheet(
    {required BuildContext context, required WidgetRef ref}) {
  final TextEditingController _nameController = TextEditingController();
  TextEditingController _adressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _classController = TextEditingController();

  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.black,
    builder: (context) => BottomSheet(
      backgroundColor: const Color.fromARGB(255, 186, 170, 123),
      onClosing: () {},
      builder: (context) => Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )))),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                  controller: _adressController,
                  decoration: const InputDecoration(
                      hintText: "Adress",
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50))))),
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ))),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                  controller: _classController,
                  decoration: const InputDecoration(
                      hintText: "ClassName",
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50))))),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  ref.read(studentContactProvider.notifier).studentAdd(
                      StudentModel(
                          name: _nameController.text,
                          adress: _adressController.text,
                          email: _emailController.text,
                          nameclass: int.parse(_classController.text)));
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    ),
  );
}
