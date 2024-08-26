import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'motherboard_edit_widget.dart' show MotherboardEditWidget;
import 'package:flutter/material.dart';

class MotherboardEditModel extends FlutterFlowModel<MotherboardEditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtMotherBoardName widget.
  FocusNode? txtMotherBoardNameFocusNode;
  TextEditingController? txtMotherBoardNameTextController;
  String? Function(BuildContext, String?)?
      txtMotherBoardNameTextControllerValidator;
  // State field(s) for txtSize widget.
  String? txtSizeValue;
  FormFieldController<String>? txtSizeValueController;
  // State field(s) for txtTipoRam widget.
  String? txtTipoRamValue;
  FormFieldController<String>? txtTipoRamValueController;
  // State field(s) for txtTipoSocket widget.
  String? txtTipoSocketValue;
  FormFieldController<String>? txtTipoSocketValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtMotherBoardNameFocusNode?.dispose();
    txtMotherBoardNameTextController?.dispose();
  }
}
