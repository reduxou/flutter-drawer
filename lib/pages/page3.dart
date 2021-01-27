import 'package:flutter/material.dart';
import 'package:pages_drawer/pages/homepage.dart';
import 'package:pages_drawer/pages/page2.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Pagina 3'),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 250),
            child: Center(
                child: Column(
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    MaterialPageRoute(builder: (context) => Page2());
                  },
                  child: Text('Voltar'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('Voltar para a Homepage'),
                )
              ],
            ))));
  }
}
