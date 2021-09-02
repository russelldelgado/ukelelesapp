import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/src/helpers/helpers.dart';
import 'package:shoesapp/src/models/zapato_model.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';
import 'package:shoesapp/src/widgets/volver.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();

    return Scaffold(
      // body: CustomAppBar( texto: 'For you' )
      // body: ZapatoSizePreview(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              //CustomAppBar( texto: 'For you' ),

              Expanded(
                  child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Stack(children: [
                  Column(
                    children: <Widget>[
                      Hero(tag: 'zapato-1', child: ZapatoSizePreview()),
                      ZapatoDescripcion(
                        titulo: '${Provider.of<ZapatoModel>(context).nombre}',
                        descripcion: '''
                        ${Provider.of<ZapatoModel>(context).descripcion}
                            ''',
                      ),
                    ],
                  ),
                  Volver(),
                ]),
              )),
              AgregarCarritoBoton(
                  monto: Provider.of<ZapatoModel>(context, listen: false).price)
            ],
          ),
        ),
      ),
    );
  }
}
