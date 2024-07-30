import '/flutter_flow/flutter_flow_util.dart';
import 'menu_admin_widget.dart' show MenuAdminWidget;
import 'package:flutter/material.dart';

class MenuAdminModel extends FlutterFlowModel<MenuAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
