
import 'package:flutter/material.dart';
import 'dart:async';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController(); 

  List<int> _listaNumeros = [];
  int _ultimoItem = 0; 
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _crearList(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearList(){
    return RefreshIndicator(
      onRefresh: obtenerPagina1,

      child: ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _listaNumeros[index];
        return FadeInImage(
          image: NetworkImage('https://i.picsum.photos/id/$imagen/500/300.jpg'),
          placeholder: AssetImage('assets/original.gif'),
        ); 
      },
      ),
    );
  }

  Future<Null> obtenerPagina1() async{
    final duration = new Duration(seconds: 2);
    new Timer(
      duration, (){
        _listaNumeros.clear();
        _ultimoItem++;
        _agregar10();
      }
    );

    return Future.delayed(duration);
  }


  void _agregar10(){
    for(var i = 1; i < 10; i++){
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }


  Future<Null> fetchData() async{
    _isLoading = true; 
    setState(() {
      
    });

    final duration = new Duration(seconds: 2);
     new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP(){
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 250), 
      curve: Curves.fastOutSlowIn
    );
    _agregar10();
  }

  Widget _crearLoading(){
    if(_isLoading){
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15),
        ],
      );
    }
    else{
      return Container();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}