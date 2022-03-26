import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ciudad_record.g.dart';

abstract class CiudadRecord
    implements Built<CiudadRecord, CiudadRecordBuilder> {
  static Serializer<CiudadRecord> get serializer => _$ciudadRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Nombre')
  String get nombre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CiudadRecordBuilder builder) =>
      builder..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ciudad');

  static Stream<CiudadRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CiudadRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CiudadRecord._();
  factory CiudadRecord([void Function(CiudadRecordBuilder) updates]) =
      _$CiudadRecord;

  static CiudadRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCiudadRecordData({
  String nombre,
}) =>
    serializers.toFirestore(
        CiudadRecord.serializer, CiudadRecord((c) => c..nombre = nombre));
