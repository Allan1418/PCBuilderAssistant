import '/flutter_flow/flutter_flow_util.dart';
import 'pre_build_p_c_copy_widget.dart' show PreBuildPCCopyWidget;
import 'package:flutter/material.dart';

class PreBuildPCCopyModel extends FlutterFlowModel<PreBuildPCCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ryzenprueba widget.
  FocusNode? ryzenpruebaFocusNode;
  TextEditingController? ryzenpruebaTextController;
  String? Function(BuildContext, String?)? ryzenpruebaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ryzenpruebaFocusNode?.dispose();
    ryzenpruebaTextController?.dispose();
  }
}
