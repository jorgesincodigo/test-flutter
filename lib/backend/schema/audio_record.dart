import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'audio_record.g.dart';

abstract class AudioRecord implements Built<AudioRecord, AudioRecordBuilder> {
  static Serializer<AudioRecord> get serializer => _$audioRecordSerializer;

  @nullable
  String get audio;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AudioRecordBuilder builder) => builder
    ..audio = ''
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('audio');

  static Stream<AudioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AudioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AudioRecord._();
  factory AudioRecord([void Function(AudioRecordBuilder) updates]) =
      _$AudioRecord;

  static AudioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAudioRecordData({
  String audio,
  String name,
}) =>
    serializers.toFirestore(
        AudioRecord.serializer,
        AudioRecord((a) => a
          ..audio = audio
          ..name = name));
