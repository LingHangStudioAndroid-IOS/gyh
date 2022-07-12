import 'package:flutter/material.dart';

void  main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title: Text('FlutterDemo')),
        body: LayoutDemo(),
      )
    );
  }
  
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Padding(
            padding:EdgeInsets.only(left:8),
            child: Text('reoreoreoreo'),
           ),
           Padding(padding: EdgeInsets.symmetric(vertical: 8),
           child: Text('reoooooooer'),
           ),
           Padding(padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,20.0),
           child: Text('reo111oer'),
           ),
        ],
      ),
    );
  }
  
}