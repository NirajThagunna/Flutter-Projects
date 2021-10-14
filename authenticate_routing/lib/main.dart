import 'package:authenticate_routing/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authenticate Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authenticate Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Click the button to go to Second Page!',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              child: const Text('Go to Second Page', textScaleFactor: 1.3,),
              onPressed: (){
                Navigator.of(context).pushNamed(
                  // Route Name
                  '/second',
                  arguments: 'Hey, I am from first page!',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}


