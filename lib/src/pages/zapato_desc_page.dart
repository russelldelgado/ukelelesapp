import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/src/helpers/helpers.dart';
import 'package:shoesapp/src/models/zapato_model.dart';
import 'package:shoesapp/src/static/descripcion/descripcion_ukelele.dart';
import 'package:shoesapp/src/static/nombre/nombre_ukelele.dart';
import 'package:shoesapp/src/static/precio/precio_ukelele.dart';
import 'package:shoesapp/src/static/rutasimagenes/rutas_imagenes.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

class ZapatoDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cambiarStatusLight();

    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(tag: 'zapato-1', child: ZapatoSizePreview(fullScreen: true)),
            //TODO : BOTON VOLVER VA A QUI SI ESTA ES LA SEGUND PÁGINA
          ],
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ZapatoDescripcion(
                  titulo: Provider.of<ZapatoModel>(context).nombre,
                  descripcion: '''
              
                          '''),
              _MontoBuyNow(),
              _ColoresYmas(),
              _BotonesLikeCartSettings()
            ],
          ),
        ))
      ],
    ));
  }
}

class _BotonesLikeCartSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _BotonSombreado(
              Icon(Icons.person, color: Colors.red, size: 25), 'Personalizar'),
          _BotonSombreado(
              Icon(Icons.colorize_sharp,
                  color: Colors.grey.withOpacity(0.4), size: 25),
              'Basicos'),
          _BotonSombreado(
              Icon(Icons.image, color: Colors.grey.withOpacity(0.4), size: 25),
              'Mis diseños'),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;
  final String mensaje;

  const _BotonSombreado(this.icon, this.mensaje);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: mensaje,
      child: Container(
        child: this.icon,
        width: 55,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: -5,
                  blurRadius: 20,
                  offset: Offset(0, 10))
            ]),
      ),
    );
  }
}

class _ColoresYmas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Stack(
            children: <Widget>[
              Positioned(
                  left: 280,
                  child: _BotonColor(
                      nombre: NombresUkelele.NOMBREUKELELE8,
                      descripcion: DescricionUkelele.DESCRIPCIONUKELELE8,
                      precio: PrecioUkelele.P99,
                      color: Color(0xffC6D642),
                      index: 8,
                      gradient: RadialGradient(
                          tileMode: TileMode.clamp,
                          colors: [Colors.black, Colors.pink]),
                      urlImagen: RutasImagenes.UKELELE8)),
              Positioned(
                  left: 240,
                  child: _BotonColor(
                      nombre: NombresUkelele.NOMBREUKELELE7,
                      descripcion: DescricionUkelele.DESCRIPCIONUKELELE7,
                      precio: PrecioUkelele.P99,
                      color: Colors.black,
                      index: 7,
                      urlImagen: RutasImagenes.UKELELE7)),
              Positioned(
                  left: 200,
                  child: _BotonColor(
                      nombre: NombresUkelele.NOMBREUKELELE6,
                      descripcion: DescricionUkelele.DESCRIPCIONUKELELE6,
                      precio: PrecioUkelele.P99,

                      //color: Color(0xffC6D642),
                      index: 6,
                      gradient:
                          LinearGradient(tileMode: TileMode.repeated, colors: [
                        Color(0xff44aae4),
                        Color(0xffe567c6),
                      ]),
                      urlImagen: RutasImagenes.UKELELE6)),
              Positioned(
                  left: 160,
                  child: _BotonColor(
                      nombre: NombresUkelele.NOMBREUKELELE5,
                      descripcion: DescricionUkelele.DESCRIPCIONUKELELE5,
                      precio: PrecioUkelele.P99,
                      color: Color(0xffefc1a5),
                      index: 5,
                      urlImagen: RutasImagenes.UKELELE5)),
              Positioned(
                  left: 120,
                  child: _BotonColor(
                      nombre: NombresUkelele.NOMBREUKELELE4,
                      descripcion: DescricionUkelele.DESCRIPCIONUKELELE4,
                      precio: PrecioUkelele.P99,
                      color: Color(0xffC6D642),
                      index: 4,
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.white]),
                      urlImagen: RutasImagenes.UKELELE4)),
              Positioned(
                  left: 80,
                  child: _BotonColor(
                      nombre: NombresUkelele.NOMBREUKELELE3,
                      descripcion: DescricionUkelele.DESCRIPCIONUKELELE3,
                      precio: PrecioUkelele.P99,
                      color: Color(0xffFFAD29),
                      index: 3,
                      gradient:
                          LinearGradient(begin: Alignment.topCenter, colors: [
                        Colors.green[300],
                        Colors.blue,
                      ]),
                      urlImagen: RutasImagenes.UKELELE3)),
              Positioned(
                  left: 40,
                  child: _BotonColor(
                      nombre: NombresUkelele.NOMBREUKELELE2,
                      descripcion: DescricionUkelele.DESCRIPCIONUKELELE2,
                      precio: PrecioUkelele.P99,
                      color: Color(0xff2099F1),
                      index: 2,
                      urlImagen: RutasImagenes.UKELELE2)),
              _BotonColor(
                  nombre: NombresUkelele.NOMBREUKELELE1,
                  descripcion: DescricionUkelele.DESCRIPCIONUKELELE1,
                  precio: PrecioUkelele.P99,
                  color: Colors.red,
                  index: 1,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [Colors.red, Colors.white]),
                  urlImagen: RutasImagenes.UKELELE1),
            ],
          )),
          // BotonNaranja(
          //   texto: 'More related items',
          //   alto: 30,
          //   ancho: 170,
          //   color: Color(0xffFFC675),
          // )
        ],
      ),
    );
  }
}

class _Botoncolor {}

class _BotonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String nombre;
  final double precio;
  final String descripcion;
  final String urlImagen;
  final Gradient gradient;

  const _BotonColor(
      {this.color,
      this.index,
      this.urlImagen,
      this.precio,
      this.gradient,
      @required this.nombre,
      @required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final zapatoModel = Provider.of<ZapatoModel>(context, listen: false);
          zapatoModel.assetImage = this.urlImagen;
          zapatoModel.nombre = this.nombre;
          zapatoModel.descripcion = this.descripcion;
          zapatoModel.price = this.precio;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: color ?? Colors.white,
              shape: BoxShape.circle,
              gradient: this.gradient),
        ),
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ukelele = Provider.of<ZapatoModel>(context, listen: false);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: Duration(seconds: 1),
              content: Text(
                  '1-relle sus datos\n2-Se envia un correo con el diseño y sus datos')));
        },
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            children: <Widget>[
              Text('\$${ukelele.price}',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Spacer(),
              Bounce(
                  delay: Duration(seconds: 1),
                  from: 8,
                  child: BotonNaranja(texto: 'Encargar', ancho: 120, alto: 40))
            ],
          ),
        ),
      ),
    );
  }
}
