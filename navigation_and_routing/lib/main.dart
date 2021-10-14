import 'package:flutter/material.dart';
import 'package:navigation_and_routing/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(title: 'First Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  final String title;

  const FirstPage({Key? key, required this.title}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
            const Text('Click the button to go to Second Page!',
                style: TextStyle(fontSize: 20),),
            ElevatedButton(
              child: const Text('Go to Second Page', textScaleFactor: 1.3,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const SecondRoute(
                      data: 'Here, you are in the second page!',
                  ),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}


