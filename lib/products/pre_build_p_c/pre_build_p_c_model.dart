import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pre_build_p_c_widget.dart' show PreBuildPCWidget;
import 'package:flutter/material.dart';

class PreBuildPCModel extends FlutterFlowModel<PreBuildPCWidget> {
  ///  Local state fields for this page.

  DocumentReference? actualCpu;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in PreBuildPC widget.
  BuildsRecord? salidaRead;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
