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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _frecuencia = snapshotData['frecuencia'] as String?;
    _tiporam = snapshotData['tiporam'] as String?;
    _image = snapshotData['image'] as String?;
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
  String? nombre,
  String? frecuencia,
  String? tiporam,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'frecuencia': frecuencia,
      'tiporam': tiporam,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class RamRecordDocumentEquality implements Equality<RamRecord> {
  const RamRecordDocumentEquality();

  @override
  bool equals(RamRecord? e1, RamRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.frecuencia == e2?.frecuencia &&
        e1?.tiporam == e2?.tiporam &&
        e1?.image == e2?.image;
  }

  @override
  int hash(RamRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.frecuencia, e?.tiporam, e?.image]);

  @override
  bool isValidKey(Object? o) => o is RamRecord;
}
