import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentReference? _buildActual;
  DocumentReference? get buildActual => _buildActual;
  set buildActual(DocumentReference? value) {
    _buildActual = value;
  }

  DocumentReference? _userFiltro =
      FirebaseFirestore.instance.doc('/users/6yaVczrBFRQ6jOnrNjh8MC0oySX2');
  DocumentReference? get userFiltro => _userFiltro;
  set userFiltro(DocumentReference? value) {
    _userFiltro = value;
  }
}
