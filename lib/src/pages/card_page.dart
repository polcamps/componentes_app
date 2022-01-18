import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

Widget _cardTipo1(){
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color:  Colors.blue),
          title: Text('Soy el título de esta tarjeta'),
          subtitle: Text('Aquí estamos con la descripcion de la tarjeta que ustedes vean para tener una idea de lo que quiero mostrarles'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: (){},
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: (){}
            ),
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2(){
  final card =  Container(
      //clipBehavior: Clip.antiAlias,//ens ajudara a que res del que estigui a la tarjeta es surti de la mateixa
      child: Column(
        children: <Widget>[
          FadeInImage(
              image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
              placeholder: AssetImage('assets/original.gif'),
              fadeInDuration: Duration( milliseconds: 200 ),
              height: 300,
              fit: BoxFit.cover,
          ),
          //Image(image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),  
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );

  /*return Card(//aquest codi també funciona!!
    clipBehavior: Clip.antiAlias,//ens ajudara a que res del que estigui a la tarjeta es surti de la mateixa
    child: Column(
      children: <Widget>[
        FadeInImage(
            image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300,
            fit: BoxFit.cover,
        ),
        //Image(image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg')),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('No tengo idea de que poner'))
      ],
    ),
  );*/
}