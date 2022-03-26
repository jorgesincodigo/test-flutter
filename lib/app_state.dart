import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _numeropersistente =
        prefs.getInt('ff_numeropersistente') ?? _numeropersistente;
    _Notas = prefs.getStringList('ff_Notas') ?? _Notas;
    _usuario =
        prefs.getStringList('ff_usuario')?.map((path) => path.ref)?.toList() ??
            _usuario;
    _contcantidadList =
        prefs.getStringList('ff_contcantidadList')?.map(int.parse)?.toList() ??
            _contcantidadList;
  }

  SharedPreferences prefs;

  int numero = 0;

  int _numeropersistente = 0;
  int get numeropersistente => _numeropersistente;
  set numeropersistente(int _value) {
    _numeropersistente = _value;
    prefs.setInt('ff_numeropersistente', _value);
  }

  List<String> _Notas = [];
  List<String> get Notas => _Notas;
  set Notas(List<String> _value) {
    _Notas = _value;
    prefs.setStringList('ff_Notas', _value);
  }

  void addToNotas(String _value) {
    _Notas.add(_value);
    prefs.setStringList('ff_Notas', _Notas);
  }

  void removeFromNotas(String _value) {
    _Notas.remove(_value);
    prefs.setStringList('ff_Notas', _Notas);
  }

  List<DocumentReference> _usuario = [];
  List<DocumentReference> get usuario => _usuario;
  set usuario(List<DocumentReference> _value) {
    _usuario = _value;
    prefs.setStringList('ff_usuario', _value.map((x) => x.path).toList());
  }

  void addToUsuario(DocumentReference _value) {
    _usuario.add(_value);
    prefs.setStringList('ff_usuario', _usuario.map((x) => x.path).toList());
  }

  void removeFromUsuario(DocumentReference _value) {
    _usuario.remove(_value);
    prefs.setStringList('ff_usuario', _usuario.map((x) => x.path).toList());
  }

  int num1 = 0;

  int num2 = 0;

  int contcantidad = 0;

  List<int> _contcantidadList = [];
  List<int> get contcantidadList => _contcantidadList;
  set contcantidadList(List<int> _value) {
    _contcantidadList = _value;
    prefs.setStringList(
        'ff_contcantidadList', _value.map((x) => x.toString()).toList());
  }

  void addToContcantidadList(int _value) {
    _contcantidadList.add(_value);
    prefs.setStringList('ff_contcantidadList',
        _contcantidadList.map((x) => x.toString()).toList());
  }

  void removeFromContcantidadList(int _value) {
    _contcantidadList.remove(_value);
    prefs.setStringList('ff_contcantidadList',
        _contcantidadList.map((x) => x.toString()).toList());
  }

  String imagentemp =
      'https://www.unfe.org/wp-content/uploads/2019/04/SM-placeholder.png';

  String imagenTemp;

  String miimagentemporal;

  List<DocumentReference> Cuidades = [];

  String dataqr = '';

  List<dynamic> listado = [];

  String resultado = '';

  DateTime valorcalendar;

  LatLng VarLatLng;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
