import '/flutter_flow/flutter_flow_util.dart';
import 'save_build_p_c_widget.dart' show SaveBuildPCWidget;
import 'package:flutter/material.dart';

class SaveBuildPCModel extends FlutterFlowModel<SaveBuildPCWidget> {
  ///  State fields for stateful widgets in this page.

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
