import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'processor_new_widget.dart' show ProcessorNewWidget;
import 'package:flutter/material.dart';

class ProcessorNewModel extends FlutterFlowModel<ProcessorNewWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtProcessorName widget.
  FocusNode? txtProcessorNameFocusNode;
  TextEditingController? txtProcessorNameTextController;
  String? Function(BuildContext, String?)?
      txtProcessorNameTextControllerValidator;
  // State field(s) for txtSocket widget.
  String? txtSocketValue;
  FormFieldController<String>? txtSocketValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtProcessorNameFocusNode?.dispose();
    txtProcessorNameTextController?.dispose();
  }
}
