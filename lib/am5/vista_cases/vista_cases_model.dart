import '/flutter_flow/flutter_flow_util.dart';
import 'vista_cases_widget.dart' show VistaCasesWidget;
import 'package:flutter/material.dart';

class VistaCasesModel extends FlutterFlowModel<VistaCasesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
