import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PsuRecord extends FirestoreRecord {
  PsuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "watts" field.
  String? _watts;
  String get watts => _watts ?? '';
  bool hasWatts() => _watts != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _watts = snapshotData['watts'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('psu');

  static Stream<PsuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PsuRecord.fromSnapshot(s));

  static Future<PsuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PsuRecord.fromSnapshot(s));

  static PsuRecord fromSnapshot(DocumentSnapshot snapshot) => PsuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PsuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PsuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PsuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PsuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPsuRecordData({
  String? nombre,
  String? watts,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'watts': watts,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class PsuRecordDocumentEquality implements Equality<PsuRecord> {
  const PsuRecordDocumentEquality();

  @override
  bool equals(PsuRecord? e1, PsuRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.watts == e2?.watts &&
        e1?.image == e2?.image;
  }

  @override
  int hash(PsuRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.watts, e?.image]);

  @override
  bool isValidKey(Object? o) => o is PsuRecord;
}
