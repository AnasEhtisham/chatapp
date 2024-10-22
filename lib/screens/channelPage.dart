import 'package:flutter/material.dart';

class ChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Channels"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bbc.jpg'),
            ),
            title: Text("BBC NEWS"),
            subtitle: Text("A channel for Fake News"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/htv.jpg'),
            ),
            title: Text("Haqeeqat TV"),
            subtitle: Text("The most realistic news channel that don't lie..."),
          ),
        ],
      ),
    );
  }
}
