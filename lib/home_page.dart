import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
        centerTitle: true,
      ),
      body: _body(), 
    );
  }
  
  _body(){
    return Container(
      color: Colors.white,
      child: Center(
        child: _button(),
      ),
    );
  }

  _button(){
    return RaisedButton(
      color: Colors.green,
      child: Text(
        "OK",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      onPressed: () => _onClickOk('Clicou no botão!'),
    );
  }

  void _onClickOk(String msg){
    /* print('Clicou no botão!'); */
    print(msg);
  }

  _img(){
    return Image.asset("assets/images/dog1.png");
  }
  _text(){
    return Text('Hello World',
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
      ),);
  }
}