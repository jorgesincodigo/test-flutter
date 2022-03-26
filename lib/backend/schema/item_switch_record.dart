import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_switch_record.g.dart';

abstract class ItemSwitchRecord
    implements Built<ItemSwitchRecord, ItemSwitchRecordBuilder> {
  static Serializer<ItemSwitchRecord> get serializer =>
      _$itemSwitchRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Product_name')
  String get productName;

  @nullable
  bool get isBuyed;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ItemSwitchRecordBuilder builder) => builder
    ..productName = ''
    ..isBuyed = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itemSwitch');

  static Stream<ItemSwitchRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ItemSwitchRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ItemSwitchRecord._();
  factory ItemSwitchRecord([void Function(ItemSwitchRecordBuilder) updates]) =
      _$ItemSwitchRecord;

  static ItemSwitchRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createItemSwitchRecordData({
  String productName,
  bool isBuyed,
}) =>
    serializers.toFirestore(
        ItemSwitchRecord.serializer,
        ItemSwitchRecord((i) => i
          ..productName = productName
          ..isBuyed = isBuyed));
