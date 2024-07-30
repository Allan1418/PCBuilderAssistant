import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'name_build_widget.dart' show NameBuildWidget;
import 'package:flutter/material.dart';

class NameBuildModel extends FlutterFlowModel<NameBuildWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BuildsRecord? pasi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
