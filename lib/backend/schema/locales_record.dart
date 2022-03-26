import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'locales_record.g.dart';

abstract class LocalesRecord
    implements Built<LocalesRecord, LocalesRecordBuilder> {
  static Serializer<LocalesRecord> get serializer => _$localesRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  DocumentReference get cuidad;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LocalesRecordBuilder builder) =>
      builder..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Locales');

  static Stream<LocalesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LocalesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LocalesRecord._();
  factory LocalesRecord([void Function(LocalesRecordBuilder) updates]) =
      _$LocalesRecord;

  static LocalesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLocalesRecordData({
  String nombre,
  DocumentReference cuidad,
}) =>
    serializers.toFirestore(
        LocalesRecord.serializer,
        LocalesRecord((l) => l
          ..nombre = nombre
          ..cuidad = cuidad));
