import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'storage_new_widget.dart' show StorageNewWidget;
import 'package:flutter/material.dart';

class StorageNewModel extends FlutterFlowModel<StorageNewWidget> {
  ///  State fields for stateful widgets in this page.

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
