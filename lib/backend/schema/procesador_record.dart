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

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Procesador');

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
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProcesadorRecordDocumentEquality implements Equality<ProcesadorRecord> {
  const ProcesadorRecordDocumentEquality();

  @override
  bool equals(ProcesadorRecord? e1, ProcesadorRecord? e2) {
    return e1?.nombre == e2?.nombre;
  }

  @override
  int hash(ProcesadorRecord? e) => const ListEquality().hash([e?.nombre]);

  @override
  bool isValidKey(Object? o) => o is ProcesadorRecord;
}
