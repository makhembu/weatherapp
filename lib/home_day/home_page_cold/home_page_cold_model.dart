import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_cold_widget.dart' show HomePageColdWidget;
import 'package:flutter/material.dart';

class HomePageColdModel extends FlutterFlowModel<HomePageColdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (api)] action in HomePage_Cold widget.
  ApiCallResponse? apiResultj2k;
  // Stores action output result for [Backend Call - API (api)] action in IconButton widget.
  ApiCallResponse? apiResults5p;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
