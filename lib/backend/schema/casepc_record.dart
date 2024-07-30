import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CasepcRecord extends FirestoreRecord {
  CasepcRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _size = snapshotData['size'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('casepc');

  static Stream<CasepcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CasepcRecord.fromSnapshot(s));

  static Future<CasepcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CasepcRecord.fromSnapshot(s));

  static CasepcRecord fromSnapshot(DocumentSnapshot snapshot) => CasepcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CasepcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CasepcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CasepcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CasepcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCasepcRecordData({
  String? nombre,
  String? imagen,
  String? size,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'imagen': imagen,
      'size': size,
    }.withoutNulls,
  );

  return firestoreData;
}

class CasepcRecordDocumentEquality implements Equality<CasepcRecord> {
  const CasepcRecordDocumentEquality();

  @override
  bool equals(CasepcRecord? e1, CasepcRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.imagen == e2?.imagen &&
        e1?.size == e2?.size;
  }

  @override
  int hash(CasepcRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.imagen, e?.size]);

  @override
  bool isValidKey(Object? o) => o is CasepcRecord;
}
