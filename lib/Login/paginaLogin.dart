import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gespam_agua/Home/paginaHome.dart';

class PaginaLogin extends StatefulWidget {
  @override
  _PaginaLoginState createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailUsusario = TextEditingController();
  TextEditingController senhaUsusario = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Center(
          child: Image.asset(
            "images/login.jpg",
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text("Gespam Água"), //selecione o município
            TextFormField(
              key: loginKey,
              autofocus: true,
              controller: senhaUsusario,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              key: loginKey,
              controller: senhaUsusario,
              obscureText: true,
            ),
            RaisedButton(
              child: Text(
                "ACESSAR",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.indigo,
              onPressed: () {},
            ),
            RaisedButton(
              child: Text(
                "Esqueci minha senha",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.indigo,
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },
            ),
            Text("Gespam Água 2.0")
          ],
        )
      ],
    );
  }
}
