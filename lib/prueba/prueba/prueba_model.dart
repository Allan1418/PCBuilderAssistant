import '/flutter_flow/flutter_flow_util.dart';
import 'prueba_widget.dart' show PruebaWidget;
import 'package:flutter/material.dart';

class PruebaModel extends FlutterFlowModel<PruebaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
