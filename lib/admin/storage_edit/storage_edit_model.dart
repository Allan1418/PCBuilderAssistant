import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'storage_edit_widget.dart' show StorageEditWidget;
import 'package:flutter/material.dart';

class StorageEditModel extends FlutterFlowModel<StorageEditWidget> {
  ///  Local state fields for this page.

  String? image;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtStorageName widget.
  FocusNode? txtStorageNameFocusNode;
  TextEditingController? txtStorageNameTextController;
  String? Function(BuildContext, String?)?
      txtStorageNameTextControllerValidator;
  // State field(s) for txtTipoStorage widget.
  String? txtTipoStorageValue;
  FormFieldController<String>? txtTipoStorageValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtStorageNameFocusNode?.dispose();
    txtStorageNameTextController?.dispose();
  }
}
