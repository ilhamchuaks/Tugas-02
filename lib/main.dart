import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Ilham Maulana Ramadhan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
            Container(
              height: 100,
              width: 200,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 251, 255, 0),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Container(
              height: 100,
              width: 200,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 214, 10, 214),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Container(
              child: Text(
                'Ilham Maulana Ramadhan',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                '1207070058',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Tugas 2 Mobile Programming',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
