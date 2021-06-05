import 'package:flutter/material.dart';

void main() {
  runApp(MyStatef());
}

class MyStatef extends StatefulWidget {
  @override
  _MyStatefState createState() => _MyStatefState();
}

class _MyStatefState extends State<MyStatef> {

  String _showText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mystatf app'),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("$_showText", style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),

              RaisedButton(
                  onPressed: (){
                    setState(() {
                      _showText = "Here I am";
                    });
                  },

                  splashColor: Colors.green,
                  child: Text('Show me', style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                  ),


              RaisedButton(
                onPressed: (){
                  setState(() {
                    _showText = "-_-";
                  });
                },

                splashColor: Colors.green,
                child: Text('Hide me', style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
