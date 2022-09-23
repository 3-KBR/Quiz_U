import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_u/token.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        title: Text(widget.title),
      ),






      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget>[
            const Text('You have pushed the button this many times:',),
            Text('$_counter', style: Theme.of(context).textTheme.headline4,),
          ],


        ),
      ),






      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          var info = await Token().getUserToken('0512345678');
          var info2 = await Token().getQuestions();
          },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),



      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
