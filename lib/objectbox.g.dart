// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'model/student_contact_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 9007093567765145577),
      name: 'StudentModel',
      lastPropertyId: const IdUid(5, 1796289456524716696),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1766345318111356321),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 875590485296713150),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4704120864199594359),
            name: 'adress',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5956750994400311228),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1796289456524716696),
            name: 'nameclass',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 9007093567765145577),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    StudentModel: EntityDefinition<StudentModel>(
        model: _entities[0],
        toOneRelations: (StudentModel object) => [],
        toManyRelations: (StudentModel object) => {},
        getId: (StudentModel object) => object.id,
        setId: (StudentModel object, int id) {
          object.id = id;
        },
        objectToFB: (StudentModel object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final adressOffset = fbb.writeString(object.adress);
          final emailOffset = fbb.writeString(object.email);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, adressOffset);
          fbb.addOffset(3, emailOffset);
          fbb.addInt64(4, object.nameclass);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = StudentModel(
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              adress: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              email: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, ''),
              nameclass:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [StudentModel] entity fields to define ObjectBox queries.
class StudentModel_ {
  /// see [StudentModel.id]
  static final id =
      QueryIntegerProperty<StudentModel>(_entities[0].properties[0]);

  /// see [StudentModel.name]
  static final name =
      QueryStringProperty<StudentModel>(_entities[0].properties[1]);

  /// see [StudentModel.adress]
  static final adress =
      QueryStringProperty<StudentModel>(_entities[0].properties[2]);

  /// see [StudentModel.email]
  static final email =
      QueryStringProperty<StudentModel>(_entities[0].properties[3]);

  /// see [StudentModel.nameclass]
  static final nameclass =
      QueryIntegerProperty<StudentModel>(_entities[0].properties[4]);
}
