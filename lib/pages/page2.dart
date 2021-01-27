import 'package:flutter/material.dart';
import 'package:pages_drawer/pages/homepage.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Página 2'),
          backgroundColor: Colors.blue[300],
        ),
        body: Container(
            padding: EdgeInsets.only(top: 250),
            child: Center(
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                    child: Text('Voltar'),
                  ),
                  RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page3()));
                      },
                      child: Text('Ir para a pagina 3'))
                ],
              ),
            )));
  }
}
