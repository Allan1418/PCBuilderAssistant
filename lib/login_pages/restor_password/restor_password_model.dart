import '/flutter_flow/flutter_flow_util.dart';
import 'restor_password_widget.dart' show RestorPasswordWidget;
import 'package:flutter/material.dart';

class RestorPasswordModel extends FlutterFlowModel<RestorPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for restoreEmail widget.
  FocusNode? restoreEmailFocusNode;
  TextEditingController? restoreEmailTextController;
  String? Function(BuildContext, String?)? restoreEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    restoreEmailFocusNode?.dispose();
    restoreEmailTextController?.dispose();
  }
}
