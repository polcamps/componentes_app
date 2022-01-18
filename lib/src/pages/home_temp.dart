import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Quatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorto()
      ),
    );
  }

  /*List <Widget> _crearItems(){
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
          ..add(Divider());
    }

    return lista;
  }*/

  List <Widget> _crearItemsCorto(){ 
    return opciones.map((itemperexemple){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(itemperexemple + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.add_to_photos),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();
  }
}