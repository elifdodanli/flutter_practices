import 'package:flutter/material.dart';
void main() {
  runApp(const GestureHandlingExample());
}

class GestureHandlingExample extends StatelessWidget {
  const GestureHandlingExample();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gesture Handling Example'),
          ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print('Screen tapped');
              },
              onDoubleTap: () {
                print('Screen double-tapped');
              },
              onLongPress: () {
                print('Screen long-pressed');
              },
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Tap, Double Tap, or Long Press',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                print('InkWell tapped');
                
              },
              onLongPress: () {
                print('InkWell long-pressed');
              },
              splashColor: const Color.fromARGB(255, 119, 248, 115),
              child: Container(
               
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(8.0),
                ),
                
                child: const Text(
                  'Tap Me',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}