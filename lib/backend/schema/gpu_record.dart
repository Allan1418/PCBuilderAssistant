import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GpuRecord extends FirestoreRecord {
  GpuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "chip" field.
  String? _chip;
  String get chip => _chip ?? '';
  bool hasChip() => _chip != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _image = snapshotData['image'] as String?;
    _chip = snapshotData['chip'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gpu');

  static Stream<GpuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GpuRecord.fromSnapshot(s));

  static Future<GpuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GpuRecord.fromSnapshot(s));

  static GpuRecord fromSnapshot(DocumentSnapshot snapshot) => GpuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GpuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GpuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GpuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GpuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGpuRecordData({
  String? nombre,
  String? image,
  String? chip,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'image': image,
      'chip': chip,
    }.withoutNulls,
  );

  return firestoreData;
}

class GpuRecordDocumentEquality implements Equality<GpuRecord> {
  const GpuRecordDocumentEquality();

  @override
  bool equals(GpuRecord? e1, GpuRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.image == e2?.image &&
        e1?.chip == e2?.chip;
  }

  @override
  int hash(GpuRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.image, e?.chip]);

  @override
  bool isValidKey(Object? o) => o is GpuRecord;
}
