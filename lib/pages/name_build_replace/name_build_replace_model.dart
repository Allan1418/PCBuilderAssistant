import '/flutter_flow/flutter_flow_util.dart';
import 'name_build_replace_widget.dart' show NameBuildReplaceWidget;
import 'package:flutter/material.dart';

class NameBuildReplaceModel extends FlutterFlowModel<NameBuildReplaceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
