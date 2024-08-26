import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ram_new_widget.dart' show RamNewWidget;
import 'package:flutter/material.dart';

class RamNewModel extends FlutterFlowModel<RamNewWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtRamName widget.
  FocusNode? txtRamNameFocusNode;
  TextEditingController? txtRamNameTextController;
  String? Function(BuildContext, String?)? txtRamNameTextControllerValidator;
  // State field(s) for TxtFrequencyRam widget.
  FocusNode? txtFrequencyRamFocusNode;
  TextEditingController? txtFrequencyRamTextController;
  String? Function(BuildContext, String?)?
      txtFrequencyRamTextControllerValidator;
  // State field(s) for txtTipoRam widget.
  String? txtTipoRamValue;
  FormFieldController<String>? txtTipoRamValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtRamNameFocusNode?.dispose();
    txtRamNameTextController?.dispose();

    txtFrequencyRamFocusNode?.dispose();
    txtFrequencyRamTextController?.dispose();
  }
}
