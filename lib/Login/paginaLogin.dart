import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gespam_agua/Home/paginaHome.dart';
import 'package:gespam_agua/Login/dropDownMunicipio.dart';

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
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                        "images/login.jpg",
                      ),
                      fit: BoxFit.cover))),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "images/logo.png",
                  width: 300,
                ),
                Text(
                  "Gespam Água",
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
                SizedBox(
                  height: 105,
                ),
                TextFormField(
                  controller: emailUsusario,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                          borderSide:
                              BorderSide(color: Colors.indigo, width: 2)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.indigo,
                      ),
                      hintText: "Email",
                      fillColor: Colors.black),
                ), //selecione o município
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: senhaUsusario,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                          borderSide:
                              BorderSide(color: Colors.indigo, width: 2)),
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: Colors.indigo,
                      ),
                      hintText: "Senha",
                      fillColor: Colors.black),
                ),
                EscolheMunicipio(),
                SizedBox(
                  height: 25,
                ),
                RaisedButton(
                  child: Text(
                    "            Acessar            ",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.indigo,
                  elevation: 24,
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                ),
                RaisedButton(
                  child: Text(
                    "Esqueci minha senha",
                    style: TextStyle(color: Colors.white),
                  ),
                  elevation: 24,
                  color: Colors.indigo,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Gespam Água v 2.0.0",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
//

//
////          ],
//        )
        ],
      ),
    );
  }
}
