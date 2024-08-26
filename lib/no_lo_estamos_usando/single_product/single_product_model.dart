import '/flutter_flow/flutter_flow_util.dart';
import 'single_product_widget.dart' show SingleProductWidget;
import 'package:flutter/material.dart';

class SingleProductModel extends FlutterFlowModel<SingleProductWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
