import 'package:flutter/material.dart';

import 'menuLateral.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry _padding =
        EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 20);
    return Scaffold(
      appBar: AppBar(
        title: Text("Gespam Água"),
        backgroundColor: Colors.indigo,
        //icone da prefe
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.play_arrow),
            padding: _padding,
            label: Text("Iniciar Roteiro"),
            onPressed: () {},
          ),
          FlatButton.icon(
            icon: Icon(Icons.dialpad),
            padding: _padding,
            label: Text("Cadastro de Hidrômetros"),
            onPressed: () {},
          ),
          FlatButton.icon(
            padding: _padding,
            icon: Icon(Icons.cloud_download),
            label: Text("Sincronizar Dados"),
            onPressed: () {},
          ),
          FlatButton.icon(
            padding: _padding,
            icon: Icon(Icons.cloud_download),
            label: Text("Enviar Dados"),
            onPressed: () {},
          ),
          FlatButton.icon(
            padding: _padding,
            label: Text("Mapa do Roteiro"),
            icon: Icon(Icons.map),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MenuLateral(),
    );
  }
}
