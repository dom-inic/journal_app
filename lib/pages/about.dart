import 'package:flutter/material.dart';
import 'package:journal_app/main.dart';
import '../main.dart';

class AboutPage extends StatelessWidget {

  handlesubmit() {
    final greetings = "hello, welcome to my journal app";
    return greetings;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About US'),
      ),
      body: Column(
        children: [
          searchJournal(),
          Text(
              'journal app is an app that will change the way you view your life. its an absolute game changer. imagine keeping your journals in your phone since our world revolves around smart phones nowadays'),
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text('click me')),
        ],
      ),
    );
  }

  Widget searchJournal(){
    return Column(
      children: [
        Text("search"),
        Icon(Icons.search),
      ],
    );
  }
}
