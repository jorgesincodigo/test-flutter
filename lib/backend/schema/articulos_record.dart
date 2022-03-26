import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'articulos_record.g.dart';

abstract class ArticulosRecord
    implements Built<ArticulosRecord, ArticulosRecordBuilder> {
  static Serializer<ArticulosRecord> get serializer =>
      _$articulosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Nombre')
  String get nombre;

  @nullable
  @BuiltValueField(wireName: 'Detalles')
  String get detalles;

  @nullable
  @BuiltValueField(wireName: 'Imagen')
  String get imagen;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ArticulosRecordBuilder builder) => builder
    ..nombre = ''
    ..detalles = ''
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articulos');

  static Stream<ArticulosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ArticulosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ArticulosRecord._();
  factory ArticulosRecord([void Function(ArticulosRecordBuilder) updates]) =
      _$ArticulosRecord;

  static ArticulosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createArticulosRecordData({
  String nombre,
  String detalles,
  String imagen,
}) =>
    serializers.toFirestore(
        ArticulosRecord.serializer,
        ArticulosRecord((a) => a
          ..nombre = nombre
          ..detalles = detalles
          ..imagen = imagen));
