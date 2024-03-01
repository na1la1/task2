import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo_flutter.png',height: 400, width: 200),
           const SizedBox(height: 20),
           Container(
             margin: const EdgeInsets.all(14),
             child: const Column(
               children: [
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Naila',
                      style: TextStyle(
                          fontSize: 18,
                      ),
                    ),
                  ],
                 ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Age: ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '20',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                 ),
                 Row(
                  children: [
                    Text(
                      'Hi, this is nothing...',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ],
                 ),
                 SizedBox(height: 130),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     FloatingActionButton(
                       onPressed: null,
                       backgroundColor: Colors.blue,
                       child: Icon(Icons.ac_unit),
                     )
                   ],
                 )
               ],
             ),
           ),
        ],
      ),
    );
  }
}
