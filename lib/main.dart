import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myWidget(Colors.black),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    myWidget(Colors.blueAccent),
                    myWidget(Colors.blueGrey)
                  ],
                ),
              ),
              myWidget(Colors.grey),
              Expanded(
                child: Row(
                  children: [myWidget(Colors.green), myWidget(Colors.yellow)],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                            children: [
                          Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.greenAccent,
                          )
                      ),
                      myWidget(Colors.redAccent)
                    ],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      myWidget(Colors.red),
                      Expanded(
                          flex: 2,
                          child: Container(
                        color: Colors.orange,
                      ))
                    ],
                  ))
            ],
          ))
      ],
    ),)
    ,
    );
  }
}

//my utils
Widget myWidget(Color c) {
  return Expanded(
    flex: 1,
    child: Container(
      color: c,
    ),
  );
}
