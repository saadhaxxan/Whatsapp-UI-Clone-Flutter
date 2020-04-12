import 'package:flutter/material.dart';
import 'package:practice_app/pages/call_screen.dart';
import 'package:practice_app/pages/cam_screen.dart';
import 'package:practice_app/pages/chat_screen.dart';
import 'package:practice_app/pages/status_screen.dart';
class Whatsapphome extends StatefulWidget {
  @override
  _WhatsapphomeState createState() => _WhatsapphomeState();
}

class _WhatsapphomeState extends State<Whatsapphome> with SingleTickerProviderStateMixin{

  TabController _tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = new TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Whats App"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text:"CALLS"),
          ],
        ),
        actions: <Widget>[new Icon(Icons.search),Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),new Icon(Icons.more_vert)],
      ),
      body: new TabBarView(
          controller: _tabcontroller,
          children:<Widget>[
            new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message,color: Colors.white,),
        onPressed: ()=> print("Open Chats"),
      ),
    );
  }
}
