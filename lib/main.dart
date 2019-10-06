import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'GRE Vocab'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.white),),
      ),
      body: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('He\'d have you all unravel at the'),
            color: Colors.green[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.green[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.green[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.green[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.green[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.green[600],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.green[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.green[600],
          ),
        ],
      ),
    ),
  ],
),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("test"),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // Widget buildTiles(){
  //   return 
  // }
}
