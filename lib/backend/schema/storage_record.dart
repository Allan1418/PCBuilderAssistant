import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StorageRecord extends FirestoreRecord {
  StorageRecord._(
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

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _image = snapshotData['image'] as String?;
    _tipo = snapshotData['tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('storage');

  static Stream<StorageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StorageRecord.fromSnapshot(s));

  static Future<StorageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StorageRecord.fromSnapshot(s));

  static StorageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StorageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StorageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StorageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StorageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StorageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStorageRecordData({
  String? nombre,
  String? image,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'image': image,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class StorageRecordDocumentEquality implements Equality<StorageRecord> {
  const StorageRecordDocumentEquality();

  @override
  bool equals(StorageRecord? e1, StorageRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.image == e2?.image &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(StorageRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.image, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is StorageRecord;
}
