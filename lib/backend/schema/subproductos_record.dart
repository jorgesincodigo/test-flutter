import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'subproductos_record.g.dart';

abstract class SubproductosRecord
    implements Built<SubproductosRecord, SubproductosRecordBuilder> {
  static Serializer<SubproductosRecord> get serializer =>
      _$subproductosRecordSerializer;

  @nullable
  DocumentReference get producto;

  @nullable
  int get cantidad;

  @nullable
  double get subtotal;

  @nullable
  @BuiltValueField(wireName: 'id_producto')
  String get idProducto;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SubproductosRecordBuilder builder) => builder
    ..cantidad = 0
    ..subtotal = 0.0
    ..idProducto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subproductos');

  static Stream<SubproductosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SubproductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  SubproductosRecord._();
  factory SubproductosRecord(
          [void Function(SubproductosRecordBuilder) updates]) =
      _$SubproductosRecord;

  static SubproductosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSubproductosRecordData({
  DocumentReference producto,
  int cantidad,
  double subtotal,
  String idProducto,
}) =>
    serializers.toFirestore(
        SubproductosRecord.serializer,
        SubproductosRecord((s) => s
          ..producto = producto
          ..cantidad = cantidad
          ..subtotal = subtotal
          ..idProducto = idProducto));
