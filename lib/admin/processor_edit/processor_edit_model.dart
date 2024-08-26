import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'processor_edit_widget.dart' show ProcessorEditWidget;
import 'package:flutter/material.dart';

class ProcessorEditModel extends FlutterFlowModel<ProcessorEditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TxtProcessorName widget.
  FocusNode? txtProcessorNameFocusNode;
  TextEditingController? txtProcessorNameTextController;
  String? Function(BuildContext, String?)?
      txtProcessorNameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for txtSocket widget.
  String? txtSocketValue;
  FormFieldController<String>? txtSocketValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtProcessorNameFocusNode?.dispose();
    txtProcessorNameTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
