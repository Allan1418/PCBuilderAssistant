import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'psu_new_widget.dart' show PsuNewWidget;
import 'package:flutter/material.dart';

class PsuNewModel extends FlutterFlowModel<PsuNewWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtPSUName widget.
  FocusNode? txtPSUNameFocusNode;
  TextEditingController? txtPSUNameTextController;
  String? Function(BuildContext, String?)? txtPSUNameTextControllerValidator;
  // State field(s) for txtWatts widget.
  String? txtWattsValue;
  FormFieldController<String>? txtWattsValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtPSUNameFocusNode?.dispose();
    txtPSUNameTextController?.dispose();
  }
}
