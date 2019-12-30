import 'package:flutter/material.dart';
import 'package:gespam_agua/Home/paginaHome.dart';
import 'package:gespam_agua/Home/telasMenuLateral/digitacao.dart';
import 'package:gespam_agua/Home/telasMenuLateral/hidrometros.dart';
import 'package:gespam_agua/Home/telasMenuLateral/sincronizarDados.dart';
import 'package:gespam_agua/Login/paginaLogin.dart';

class MenuLateral extends StatefulWidget {
  @override
  _MenuLateralState createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Image.asset('images/logo.png'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Início"),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sync),
            title: Text("Digitação"),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Digitacao()));},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.cloud_download),
            title: Text("Sincronizar dados"),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SinconizarDados()));},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.cloud_upload),
            title: Text("Enviar Dados"),
            onTap: () {

              //////////////////////////////////////////////////////
               },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("Bancos"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.subdirectory_arrow_left),
            title: Text("Sair"),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PaginaLogin())),
          ),
          Divider(),
        ],
      ),
    );
  }
}
//          Divider(),
//          ListTile(
//            leading: Icon(Icons.dialpad),
//            title: Text("Hidrômetros"),
//            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Hidrometros()));},
//          ),
////          Divider(),
//          ListTile(
//            leading: Icon(Icons.album),
//            title: Text("Distritos"),
//            onTap: () {},
//          ),
////          Divider(),
//          ListTile(
//            leading: Icon(Icons.place,),
//            title: Text("Poços"),
//            onTap: () {},
//          ),
//          Divider(),
//          ListTile(
//            leading: Icon(Icons.apps),
//            title: Text("Categorias"),
//            onTap: () {},
//          ),
////          Divider(),
//          ListTile(
//            leading: Icon(Icons.error_outline),
//            title: Text("Ocorrências"),
//            onTap: () {},
//          ),
////          Divider(),