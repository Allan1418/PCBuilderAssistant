import '/flutter_flow/flutter_flow_util.dart';
import 'our_recomendation_widget.dart' show OurRecomendationWidget;
import 'package:flutter/material.dart';

class OurRecomendationModel extends FlutterFlowModel<OurRecomendationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
