import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RamRecord extends FirestoreRecord {
  RamRecord._(
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

  // "frecuencia" field.
  String? _frecuencia;
  String get frecuencia => _frecuencia ?? '';
  bool hasFrecuencia() => _frecuencia != null;

  // "tiporam" field.
  String? _tiporam;
  String get tiporam => _tiporam ?? '';
  bool hasTiporam() => _tiporam != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _nombre = snapshotData['nombre'] as String?;
    _frecuencia = snapshotData['frecuencia'] as String?;
    _tiporam = snapshotData['tiporam'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ram');

  static Stream<RamRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RamRecord.fromSnapshot(s));

  static Future<RamRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RamRecord.fromSnapshot(s));

  static RamRecord fromSnapshot(DocumentSnapshot snapshot) => RamRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RamRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RamRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RamRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RamRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRamRecordData({
  int? id,
  String? nombre,
  String? frecuencia,
  String? tiporam,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'nombre': nombre,
      'frecuencia': frecuencia,
      'tiporam': tiporam,
    }.withoutNulls,
  );

  return firestoreData;
}

class RamRecordDocumentEquality implements Equality<RamRecord> {
  const RamRecordDocumentEquality();

  @override
  bool equals(RamRecord? e1, RamRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nombre == e2?.nombre &&
        e1?.frecuencia == e2?.frecuencia &&
        e1?.tiporam == e2?.tiporam;
  }

  @override
  int hash(RamRecord? e) =>
      const ListEquality().hash([e?.id, e?.nombre, e?.frecuencia, e?.tiporam]);

  @override
  bool isValidKey(Object? o) => o is RamRecord;
}
