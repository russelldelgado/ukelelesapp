import 'package:flutter/material.dart';
import 'package:shoesapp/src/static/descripcion/descripcion_ukelele.dart';
import 'package:shoesapp/src/static/nombre/nombre_ukelele.dart';
import 'package:shoesapp/src/static/precio/precio_ukelele.dart';
import 'package:shoesapp/src/static/rutasimagenes/rutas_imagenes.dart';

class ZapatoModel with ChangeNotifier {
  String _assetImage = RutasImagenes.PRIMERARUTAPORDEFECTO;
  String _nombre = NombresUkelele.NOMBREPORDEFECTO;
  String _descripcion = DescricionUkelele.PRIMERADESCRIPCIONPORDEFECTO;
  double _talla = 9.0;
  double _price = PrecioUkelele.P99;

//cambiamos las imagenes
  String get assetImage => this._assetImage;

  set assetImage(String valor) {
    this._assetImage = valor;
    notifyListeners();
  }

//cambiamos la talla
  double get talla => this._talla;
  set talla(double valor) {
    this._talla = valor;
    notifyListeners();
  }

//cambiamos el precio
  double get price => this._price;
  set price(double valor) {
    this._price = valor;
    notifyListeners();
  }

//mostramos el nombre
  String get nombre => this._nombre;
  set nombre(String valor) {
    this._nombre = valor;
    notifyListeners();
  }

//mostramos la descripcion
  String get descripcion => this._descripcion;
  set descripcion(String valor) {
    this._descripcion = valor;
    notifyListeners();
  }
}
