import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'productos_record.g.dart';

abstract class ProductosRecord
    implements Built<ProductosRecord, ProductosRecordBuilder> {
  static Serializer<ProductosRecord> get serializer =>
      _$productosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Nombre')
  String get nombre;

  @nullable
  DocumentReference get categoria;

  @nullable
  @BuiltValueField(wireName: 'Precio')
  double get precio;

  @nullable
  String get id;

  @nullable
  @BuiltValueField(wireName: 'Imagen')
  String get imagen;

  @nullable
  @BuiltValueField(wireName: 'Favoritos')
  BuiltList<DocumentReference> get favoritos;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductosRecordBuilder builder) => builder
    ..nombre = ''
    ..precio = 0.0
    ..id = ''
    ..imagen = ''
    ..favoritos = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductosRecord._();
  factory ProductosRecord([void Function(ProductosRecordBuilder) updates]) =
      _$ProductosRecord;

  static ProductosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductosRecordData({
  String nombre,
  DocumentReference categoria,
  double precio,
  String id,
  String imagen,
}) =>
    serializers.toFirestore(
        ProductosRecord.serializer,
        ProductosRecord((p) => p
          ..nombre = nombre
          ..categoria = categoria
          ..precio = precio
          ..id = id
          ..imagen = imagen
          ..favoritos = null));
