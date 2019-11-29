import 'package:flutter/material.dart';

import 'menuLateral.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry _padding = EdgeInsets.all(10);
    return Scaffold(
      appBar: AppBar(
        title: Text("Gespam Água"),
        //icone da prefe  - Image.Asset('${fotoprefeitura}')
      ),
      body: Center(
//        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton.icon(
              icon: Icon(Icons.play_arrow),
              padding: _padding,
              label: Text("Iniciar Roteiro"),
              onPressed: () {},
            ),
            OutlineButton.icon(
              icon: Icon(Icons.dialpad),
              padding: _padding,
              label: Text("Cadastro de Hidrômetros"),
              onPressed: () {},
            ),
            OutlineButton.icon(
              padding: _padding,
              icon: Icon(Icons.cloud_download),
              label: Text("Sincronizar Dados"),
              onPressed: () {},
            ),
            OutlineButton.icon(
              padding: _padding,
              icon: Icon(Icons.cloud_download),
              label: Text("Enviar Dados"),
              onPressed: () {},
            ),
            OutlineButton.icon(
              padding: _padding,
              label: Text("Mapa do Roteiro"),
              icon: Icon(Icons.map),
              onPressed: () {},
            ),
          ],
        ),
      ),
      drawer: MenuLateral(),
    );
  }
}
