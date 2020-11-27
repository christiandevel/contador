import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloText = new TextStyle(fontSize: 25.0);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de Taps',
              style: _estiloText,
            ),
            Text(
              '$_contador',
              style: _estiloText,
            ),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox(width: 5.0,)),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
        SizedBox(width: 5.0,),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add))
      ],
    );
  }

  void _agregar(){
    setState(() { _contador++; });
  }
  void _sustraer(){
    setState(() {  _contador--; });
  }
   void _reset(){
    setState(() {  _contador = 0; });
  }

}
