import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MotherRecord extends FirestoreRecord {
  MotherRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "tiposocket" field.
  String? _tiposocket;
  String get tiposocket => _tiposocket ?? '';
  bool hasTiposocket() => _tiposocket != null;

  // "tiporam" field.
  String? _tiporam;
  String get tiporam => _tiporam ?? '';
  bool hasTiporam() => _tiporam != null;

  // "tamano" field.
  String? _tamano;
  String get tamano => _tamano ?? '';
  bool hasTamano() => _tamano != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _nombre = snapshotData['nombre'] as String?;
    _tiposocket = snapshotData['tiposocket'] as String?;
    _tiporam = snapshotData['tiporam'] as String?;
    _tamano = snapshotData['tamano'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mother');

  static Stream<MotherRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MotherRecord.fromSnapshot(s));

  static Future<MotherRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MotherRecord.fromSnapshot(s));

  static MotherRecord fromSnapshot(DocumentSnapshot snapshot) => MotherRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MotherRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MotherRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MotherRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MotherRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMotherRecordData({
  int? id,
  String? nombre,
  String? tiposocket,
  String? tiporam,
  String? tamano,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'nombre': nombre,
      'tiposocket': tiposocket,
      'tiporam': tiporam,
      'tamano': tamano,
    }.withoutNulls,
  );

  return firestoreData;
}

class MotherRecordDocumentEquality implements Equality<MotherRecord> {
  const MotherRecordDocumentEquality();

  @override
  bool equals(MotherRecord? e1, MotherRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nombre == e2?.nombre &&
        e1?.tiposocket == e2?.tiposocket &&
        e1?.tiporam == e2?.tiporam &&
        e1?.tamano == e2?.tamano;
  }

  @override
  int hash(MotherRecord? e) => const ListEquality()
      .hash([e?.id, e?.nombre, e?.tiposocket, e?.tiporam, e?.tamano]);

  @override
  bool isValidKey(Object? o) => o is MotherRecord;
}
