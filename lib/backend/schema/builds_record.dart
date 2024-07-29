import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuildsRecord extends FirestoreRecord {
  BuildsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "nombrebuild" field.
  String? _nombrebuild;
  String get nombrebuild => _nombrebuild ?? '';
  bool hasNombrebuild() => _nombrebuild != null;

  // "procesador" field.
  String? _procesador;
  String get procesador => _procesador ?? '';
  bool hasProcesador() => _procesador != null;

  // "tarjetamadre" field.
  String? _tarjetamadre;
  String get tarjetamadre => _tarjetamadre ?? '';
  bool hasTarjetamadre() => _tarjetamadre != null;

  // "ram" field.
  String? _ram;
  String get ram => _ram ?? '';
  bool hasRam() => _ram != null;

  // "casepc" field.
  String? _casepc;
  String get casepc => _casepc ?? '';
  bool hasCasepc() => _casepc != null;

  // "fuente" field.
  String? _fuente;
  String get fuente => _fuente ?? '';
  bool hasFuente() => _fuente != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _nombrebuild = snapshotData['nombrebuild'] as String?;
    _procesador = snapshotData['procesador'] as String?;
    _tarjetamadre = snapshotData['tarjetamadre'] as String?;
    _ram = snapshotData['ram'] as String?;
    _casepc = snapshotData['casepc'] as String?;
    _fuente = snapshotData['fuente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('builds');

  static Stream<BuildsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BuildsRecord.fromSnapshot(s));

  static Future<BuildsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BuildsRecord.fromSnapshot(s));

  static BuildsRecord fromSnapshot(DocumentSnapshot snapshot) => BuildsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BuildsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BuildsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BuildsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BuildsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBuildsRecordData({
  DocumentReference? usuario,
  String? nombrebuild,
  String? procesador,
  String? tarjetamadre,
  String? ram,
  String? casepc,
  String? fuente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'nombrebuild': nombrebuild,
      'procesador': procesador,
      'tarjetamadre': tarjetamadre,
      'ram': ram,
      'casepc': casepc,
      'fuente': fuente,
    }.withoutNulls,
  );

  return firestoreData;
}

class BuildsRecordDocumentEquality implements Equality<BuildsRecord> {
  const BuildsRecordDocumentEquality();

  @override
  bool equals(BuildsRecord? e1, BuildsRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.nombrebuild == e2?.nombrebuild &&
        e1?.procesador == e2?.procesador &&
        e1?.tarjetamadre == e2?.tarjetamadre &&
        e1?.ram == e2?.ram &&
        e1?.casepc == e2?.casepc &&
        e1?.fuente == e2?.fuente;
  }

  @override
  int hash(BuildsRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.nombrebuild,
        e?.procesador,
        e?.tarjetamadre,
        e?.ram,
        e?.casepc,
        e?.fuente
      ]);

  @override
  bool isValidKey(Object? o) => o is BuildsRecord;
}
