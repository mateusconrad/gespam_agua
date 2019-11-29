import 'package:flutter/material.dart';

class EscolheMunicipio extends StatefulWidget {
  @override
  _EscolheMunicipioState createState() => _EscolheMunicipioState();
}

class _EscolheMunicipioState extends State<EscolheMunicipio> {
  var _valueMunicipio;

  var _listaMunicipio = ["Demonstração", "Mato Queimado", "Novo Machado"];

  @override
  Widget build(BuildContext context) {

    return DropdownButton<String>(
      items: _listaMunicipio.map((String dropDownStringItem){
        return DropdownMenuItem<String>(
          value: dropDownStringItem,
          child: Text(dropDownStringItem),
        );
      }).toList(),
      hint: Text("Selecione o município"),
      onChanged: (value){
        setState((){
          _valueMunicipio = value;
        });
      },
//      isExpanded: true,
    );
  }
}
