import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int san = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            'Тапшырма 1',
            style: TextStyle(color: Colors.black),
          )),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 250.0,
            ),
            Center(
              child: Container(
                width: 325.0,
                height: 44.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    ('Сан $san'),
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    san = san - 1;
                  },
                  child: Icon(
                    Icons.remove,
                    size: 40.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    san = san + 1;
                  },
                  child: Icon(
                    Icons.add,
                    size: 40.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}