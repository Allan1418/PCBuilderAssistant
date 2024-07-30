import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProcesadorRecord extends FirestoreRecord {
  ProcesadorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "socket" field.
  String? _socket;
  String get socket => _socket ?? '';
  bool hasSocket() => _socket != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _socket = snapshotData['socket'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('procesador');

  static Stream<ProcesadorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProcesadorRecord.fromSnapshot(s));

  static Future<ProcesadorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProcesadorRecord.fromSnapshot(s));

  static ProcesadorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProcesadorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProcesadorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProcesadorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProcesadorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProcesadorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProcesadorRecordData({
  String? name,
  String? image,
  String? socket,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'socket': socket,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProcesadorRecordDocumentEquality implements Equality<ProcesadorRecord> {
  const ProcesadorRecordDocumentEquality();

  @override
  bool equals(ProcesadorRecord? e1, ProcesadorRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.socket == e2?.socket;
  }

  @override
  int hash(ProcesadorRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.socket]);

  @override
  bool isValidKey(Object? o) => o is ProcesadorRecord;
}
