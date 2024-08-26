import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'gpu_edit_widget.dart' show GpuEditWidget;
import 'package:flutter/material.dart';

class GpuEditModel extends FlutterFlowModel<GpuEditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtGPUName widget.
  FocusNode? txtGPUNameFocusNode;
  TextEditingController? txtGPUNameTextController;
  String? Function(BuildContext, String?)? txtGPUNameTextControllerValidator;
  // State field(s) for txtChip widget.
  String? txtChipValue;
  FormFieldController<String>? txtChipValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtGPUNameFocusNode?.dispose();
    txtGPUNameTextController?.dispose();
  }
}
