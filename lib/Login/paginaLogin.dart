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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Image.asset(
                "images/logo.png",
              ),
              Text(
                "Gespam Água",
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(
                height: 55,
              ),
              TextFormField(
                controller: emailUsusario,
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(color: Colors.indigo, width: 2)),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.indigo,
                    ),
                    hintText: "Email",
                    fillColor: Colors.black),
              ), //selecione o município
              TextFormField(
                controller: senhaUsusario,
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(color: Colors.indigo, width: 2)),
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: Colors.indigo,
                    ),
                    hintText: "Email",
                    fillColor: Colors.black),
              ),
              RaisedButton(
                child: Text(
                  "ACESSAR",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.indigo,
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
              ),
              RaisedButton(
                child: Text(
                  "Esqueci minha senha",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.indigo,
                onPressed: () {},
              ),
              Text("Gespam Água 2.0")
            ],
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
