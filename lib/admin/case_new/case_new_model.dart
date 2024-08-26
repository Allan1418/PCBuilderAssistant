import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'case_new_widget.dart' show CaseNewWidget;
import 'package:flutter/material.dart';

class CaseNewModel extends FlutterFlowModel<CaseNewWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtCaseName widget.
  FocusNode? txtCaseNameFocusNode;
  TextEditingController? txtCaseNameTextController;
  String? Function(BuildContext, String?)? txtCaseNameTextControllerValidator;
  // State field(s) for txtSize widget.
  String? txtSizeValue;
  FormFieldController<String>? txtSizeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCaseNameFocusNode?.dispose();
    txtCaseNameTextController?.dispose();
  }
}
