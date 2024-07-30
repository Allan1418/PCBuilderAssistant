import '/flutter_flow/flutter_flow_util.dart';
import 'my_build_widget.dart' show MyBuildWidget;
import 'package:flutter/material.dart';

class MyBuildModel extends FlutterFlowModel<MyBuildWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
