import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch:Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _text="Hallo Flutter";

  void _changetext(){
    setState(() {
      if(_text.startsWith("H")){
        _text="Welcome to flutter app";
      }else{
        _text="Hallo flutter";
      }
    });
  }

  Widget _bodywidget(){
    return new Container(
      padding: const EdgeInsets.all(12.00),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new Text(_text,style: new TextStyle(
              fontSize: 18,
              color: Colors.blueAccent,
            ),),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(child: new Text("Home Page",style: new TextStyle(
          color: Colors.white,
        ),)),

      ),
      body: _bodywidget(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _changetext,
        child: new Icon(Icons.add),

      ),
    );
  }
}
