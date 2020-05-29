import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'SliverAppBar';

  List<Widget> _getItems() {
    List<Card> _cards = [];
    for (int i = 1; i <= 50; i++) {
      _cards.add(
        Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('Items $i'),
          ),
        ),
      );
    }
    return _cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      //   centerTitle: true,
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // backgroundColor: Colors.orange,
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(title),
              centerTitle: true,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              _getItems(),
            ),
          ),
        ],
      ),
    );
  }
}
