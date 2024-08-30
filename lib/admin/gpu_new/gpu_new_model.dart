import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'gpu_new_widget.dart' show GpuNewWidget;
import 'package:flutter/material.dart';

class GpuNewModel extends FlutterFlowModel<GpuNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
