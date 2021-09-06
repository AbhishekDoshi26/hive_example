import 'package:flutter/material.dart';
import 'package:hive_example/services/hive_helper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _counter;
  @override
  void initState() {
    super.initState();
    _counter = HiveHelper.fetchPrimitiveData('counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Example'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _counter++;
          HiveHelper.insertPrimitiveData('counter', _counter);
        },
      ),
      body: Center(
        child: Text(_counter.toString()),
      ),
    );
  }
}
