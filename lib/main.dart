import 'package:demo/counter.dart';
import 'package:demo/input_example.dart';
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
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: InputClass(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      appBar: AppBar(
        title: Text(
          'Demo',
          style: TextStyle(fontSize: 30),
        ),
      ),
      // demo 1
      body: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        // height: 300,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        //color: Colors.green,
        child: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
                color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Row and Column Example'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.red,
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.green,
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//               Text('hi'),
//               SizedBox(height: 10),
//               Text('hello'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final List<String> fruits = [
//     'Apple',
//     'Banana',
//     'Orange',
//     'Mango',
//     'Grapes',
//     'Strawberry',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('List Example'),
//         ),
//         body: ListView.builder(
//           itemCount: fruits.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(fruits[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
