import 'dart:math';

import 'package:flutter/material.dart';

void  main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: TabViewRoute(),
      )
    );
  }
  
}

class TabViewRoute extends StatelessWidget {
  get https => null;

  @override
  Widget build(BuildContext context) {

    List tabs = ["最新","最热","学校"];
    // ignore: unused_local_variable


    List<Widget> contain=[
      ListView(children: const [Text('无')]),
      ListView(children: const [Text('无')]),
      ListView(
        children: [
          Container(
            height: 250.0, 
            width:500.0,
            child: Column(
              children: [
                Row(children: [
                  
                  Container(
                    width: 400.0,
                    child: Text("title jhjsvjzjdzfubsbdjfhbuhughugfdbjiubhifjdbfuidbnb",style: TextStyle(
                    background: Paint()..color = Colors.white54,
                    color: Colors.black,
                    fontSize: 30,
                    overflow: TextOverflow.ellipsis,
                    ),
                    textAlign:TextAlign.left ,
                 ),
                  ),
                ],),
                
                 Row(children: [
                  Text("content",style: TextStyle(
                  background: Paint()..color = Colors.white54,
                  color: Colors.black45,
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                  ),
                  textAlign:TextAlign.left ,
                 ),
                ],),

                Row(
                  
                  children: const [
                  Image(
                    image:NetworkImage("https://t7.baidu.com/it/u=1732966997,2981886582&fm=193&f=GIF"),
                    width: 150,
                    height: 150,
                    
                    ),
                    
                ],
                mainAxisAlignment:MainAxisAlignment.end,
                textDirection: TextDirection.ltr,
                ),
                  
              ],
              ),
          ),


          Container(
            height: 250.0, 
            width:500.0,
            child: Column(
              children: [
                Row(children: [
                  Text("title",style: TextStyle(
                  background: Paint()..color = Colors.white54,
                  color: Colors.black,
                  fontSize: 30,
                  overflow: TextOverflow.ellipsis,
                  ),
                  textAlign:TextAlign.left ,
                 ),
                ],),
                
                 Row(children: [
                  Text("content",style: TextStyle(
                  background: Paint()..color = Colors.white54,
                  color: Colors.black45,
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                  ),
                  textAlign:TextAlign.left ,
                 ),
                ],),

                Row(children: const [
                  Image(
                    image:NetworkImage("https://t7.baidu.com/it/u=1732966997,2981886582&fm=193&f=GIF"),
                    width: 150,
                    height: 150,
                    alignment: Alignment.topRight,
                    )
                ],

                mainAxisAlignment:MainAxisAlignment.end,
                textDirection: TextDirection.ltr,
                ),
                  
              ],
              ),
          ),



          Container(
            height: 250.0, 
            width:500.0,
            child: Column(
              children: [
                Row(children: [
                  Text("title",style: TextStyle(
                  background: Paint()..color = Colors.white54,
                  color: Colors.black,
                  fontSize: 30,
                  overflow: TextOverflow.ellipsis,
                  ),
                  textAlign:TextAlign.left ,
                 ),
                ],),
                
                 Row(children: [
                  Text("content",style: TextStyle(
                  background: Paint()..color = Colors.white54,
                  color: Colors.black45,
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                  ),
                  textAlign:TextAlign.left ,
                 ),
                ],),

                Row(children: const [
                  Image(
                    image:NetworkImage("https://t7.baidu.com/it/u=1732966997,2981886582&fm=193&f=GIF"),
                    width: 150,
                    height: 150,
                    alignment: Alignment.topRight,
                    )
                ],

                mainAxisAlignment:MainAxisAlignment.end,
                textDirection: TextDirection.ltr,
                ),
                  
              ],
              ),
          ),


          
        ],
      )

    ];


    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("App Name"),
          bottom: TabBar(
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(
          children: contain,
         

        ),
      ),
    );
  }
}

















class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    Key? key,
    this.keepAlive = true,
    required this.child,
  }) : super(key: key);
  final bool keepAlive;
  final Widget child;
 
  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}
 
class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
 
  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if(oldWidget.keepAlive != widget.keepAlive) {
      
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }
 
  @override
  bool get wantKeepAlive => widget.keepAlive;
}