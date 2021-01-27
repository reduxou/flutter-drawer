import 'package:flutter/material.dart';
import 'package:pages_drawer/pages/page2.dart';
import 'page3.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('1a Página'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 250),
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Text('ir para a página 2'),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text(
                  'Pages',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg/1200px-Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg.png'),
              ),
              title: Text('Page 2'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.last_page),
              title: Text('Page 3'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
            )
          ],
        ),
      ),
    );
  }
}
