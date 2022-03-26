import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'favoritos_record.g.dart';

abstract class FavoritosRecord
    implements Built<FavoritosRecord, FavoritosRecordBuilder> {
  static Serializer<FavoritosRecord> get serializer =>
      _$favoritosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Producto')
  DocumentReference get producto;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  DocumentReference get createdBy;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FavoritosRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favoritos');

  static Stream<FavoritosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FavoritosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FavoritosRecord._();
  factory FavoritosRecord([void Function(FavoritosRecordBuilder) updates]) =
      _$FavoritosRecord;

  static FavoritosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFavoritosRecordData({
  DocumentReference producto,
  DocumentReference createdBy,
}) =>
    serializers.toFirestore(
        FavoritosRecord.serializer,
        FavoritosRecord((f) => f
          ..producto = producto
          ..createdBy = createdBy));
