import '/flutter_flow/flutter_flow_util.dart';
import 'single_user_widget.dart' show SingleUserWidget;
import 'package:flutter/material.dart';

class SingleUserModel extends FlutterFlowModel<SingleUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
