import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_record.g.dart';

abstract class ItemRecord implements Built<ItemRecord, ItemRecordBuilder> {
  static Serializer<ItemRecord> get serializer => _$itemRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Nombre')
  String get nombre;

  @nullable
  @BuiltValueField(wireName: 'Precio')
  double get precio;

  @nullable
  @BuiltValueField(wireName: 'Imagen')
  String get imagen;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ItemRecordBuilder builder) => builder
    ..nombre = ''
    ..precio = 0.0
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('item');

  static Stream<ItemRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ItemRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ItemRecord._();
  factory ItemRecord([void Function(ItemRecordBuilder) updates]) = _$ItemRecord;

  static ItemRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createItemRecordData({
  String nombre,
  double precio,
  String imagen,
}) =>
    serializers.toFirestore(
        ItemRecord.serializer,
        ItemRecord((i) => i
          ..nombre = nombre
          ..precio = precio
          ..imagen = imagen));
