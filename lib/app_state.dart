import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  String _varUsinaNome = '';
  String get varUsinaNome => _varUsinaNome;
  set varUsinaNome(String _value) {
    _varUsinaNome = _value;
  }

  String _varUsinaLocalizacao = '';
  String get varUsinaLocalizacao => _varUsinaLocalizacao;
  set varUsinaLocalizacao(String _value) {
    _varUsinaLocalizacao = _value;
  }

  double _varUsinaPotencia = 0.0;
  double get varUsinaPotencia => _varUsinaPotencia;
  set varUsinaPotencia(double _value) {
    _varUsinaPotencia = _value;
  }

  int _varUsinaTurbina = 0;
  int get varUsinaTurbina => _varUsinaTurbina;
  set varUsinaTurbina(int _value) {
    _varUsinaTurbina = _value;
  }
}
