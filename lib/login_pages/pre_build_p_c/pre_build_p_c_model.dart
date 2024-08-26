import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pre_build_p_c_widget.dart' show PreBuildPCWidget;
import 'package:flutter/material.dart';

class PreBuildPCModel extends FlutterFlowModel<PreBuildPCWidget> {
  ///  Local state fields for this page.

  DocumentReference? actualCpu;

  DocumentReference? actualMother;

  ProcesadorRecord? cpuMos;

  MotherRecord? motherMos;

  RamRecord? ramMos;

  GpuRecord? gpuMos;

  CasepcRecord? caseMos;

  CpucoolerRecord? coolerMos;

  PsuRecord? psuMos;

  StorageRecord? storageMos;

  BuildsRecord? buildMos;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  BuildsRecord? salidaRead;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  ProcesadorRecord? salidaProce;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  MotherRecord? salidaTarjeta;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  RamRecord? salidaRam;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  GpuRecord? salidaGpu;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  CasepcRecord? salidaCase;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  CpucoolerRecord? salidaCooler;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  PsuRecord? salidaPsu;
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  StorageRecord? salidaStorage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
