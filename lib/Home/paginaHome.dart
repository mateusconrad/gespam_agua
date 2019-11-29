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
          RaisedButton(
            padding: _padding,
            child: Text("Iniciar Roteiro"),
            onPressed: () {},
          ),
          RaisedButton(
            padding: _padding,
            child: Text("Cadastro de Hidrômetros"),
            onPressed: () {},
          ),
          RaisedButton(
            padding: _padding,
            child: Text("Sincronizar Dados"),
            onPressed: () {},
          ),
          RaisedButton(
            padding: _padding,
            child: Text("Enviar Dados"),
            onPressed: () {},
          ),
          RaisedButton(
            padding: _padding,
            child: Text("Iniciar Roteiro"),
            onPressed: () {},
          ),
          RaisedButton(
            padding: _padding,
            child: Text("Mapa do Roteiro"),
            onPressed: () {},
          ),
          MaterialButton(
            padding: _padding,
            child: Text("Mapa do Roteiro"),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MenuLateral(),
    );
  }
}
