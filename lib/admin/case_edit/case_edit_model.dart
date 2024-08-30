import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'case_edit_widget.dart' show CaseEditWidget;
import 'package:flutter/material.dart';

class CaseEditModel extends FlutterFlowModel<CaseEditWidget> {
  ///  Local state fields for this page.

  String? image;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
