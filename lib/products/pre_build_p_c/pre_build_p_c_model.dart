import '/flutter_flow/flutter_flow_util.dart';
import 'pre_build_p_c_widget.dart' show PreBuildPCWidget;
import 'package:flutter/material.dart';

class PreBuildPCModel extends FlutterFlowModel<PreBuildPCWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
