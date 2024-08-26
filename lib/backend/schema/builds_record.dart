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
  DocumentReference? _procesador;
  DocumentReference? get procesador => _procesador;
  bool hasProcesador() => _procesador != null;

  // "tarjetamadre" field.
  DocumentReference? _tarjetamadre;
  DocumentReference? get tarjetamadre => _tarjetamadre;
  bool hasTarjetamadre() => _tarjetamadre != null;

  // "ram" field.
  DocumentReference? _ram;
  DocumentReference? get ram => _ram;
  bool hasRam() => _ram != null;

  // "casepc" field.
  DocumentReference? _casepc;
  DocumentReference? get casepc => _casepc;
  bool hasCasepc() => _casepc != null;

  // "psu" field.
  DocumentReference? _psu;
  DocumentReference? get psu => _psu;
  bool hasPsu() => _psu != null;

  // "cpucooler" field.
  DocumentReference? _cpucooler;
  DocumentReference? get cpucooler => _cpucooler;
  bool hasCpucooler() => _cpucooler != null;

  // "storage" field.
  DocumentReference? _storage;
  DocumentReference? get storage => _storage;
  bool hasStorage() => _storage != null;

  // "gpu" field.
  DocumentReference? _gpu;
  DocumentReference? get gpu => _gpu;
  bool hasGpu() => _gpu != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _nombrebuild = snapshotData['nombrebuild'] as String?;
    _procesador = snapshotData['procesador'] as DocumentReference?;
    _tarjetamadre = snapshotData['tarjetamadre'] as DocumentReference?;
    _ram = snapshotData['ram'] as DocumentReference?;
    _casepc = snapshotData['casepc'] as DocumentReference?;
    _psu = snapshotData['psu'] as DocumentReference?;
    _cpucooler = snapshotData['cpucooler'] as DocumentReference?;
    _storage = snapshotData['storage'] as DocumentReference?;
    _gpu = snapshotData['gpu'] as DocumentReference?;
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
  DocumentReference? procesador,
  DocumentReference? tarjetamadre,
  DocumentReference? ram,
  DocumentReference? casepc,
  DocumentReference? psu,
  DocumentReference? cpucooler,
  DocumentReference? storage,
  DocumentReference? gpu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'nombrebuild': nombrebuild,
      'procesador': procesador,
      'tarjetamadre': tarjetamadre,
      'ram': ram,
      'casepc': casepc,
      'psu': psu,
      'cpucooler': cpucooler,
      'storage': storage,
      'gpu': gpu,
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
        e1?.psu == e2?.psu &&
        e1?.cpucooler == e2?.cpucooler &&
        e1?.storage == e2?.storage &&
        e1?.gpu == e2?.gpu;
  }

  @override
  int hash(BuildsRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.nombrebuild,
        e?.procesador,
        e?.tarjetamadre,
        e?.ram,
        e?.casepc,
        e?.psu,
        e?.cpucooler,
        e?.storage,
        e?.gpu
      ]);

  @override
  bool isValidKey(Object? o) => o is BuildsRecord;
}
