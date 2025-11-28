import 'package:flutter/material.dart';
void main() {
  runApp(const ExpandedAndFlexible());
}

class ExpandedAndFlexible extends StatelessWidget{
  const ExpandedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expanded and Flexible Example",
      home: Scaffold(
        body: Column(
          children: [
            
            // first row
            Row(
              children: [
                Container(
                  color: Colors.lightBlue[200],
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.pink[100],
                  height: 100,
                  width: 50,
                ),
                Expanded(
                  child: Container(
                  color: Colors.lightGreen[700],
                  height: 100,
                ),
                ),
              ],
            ),

            // second row
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.teal[100],
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.indigo[200],
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),

            // third row
            Row(
              children: [
                 Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.purple[200],
                    height: 100,
                    width: 100,
                  ),
                ),
                Flexible(
                fit: FlexFit.loose,
                child: 
                Container(
                  color: Colors.orange[200],
                  height: 100,
                  width: 150,
                ),
                ),
            ],
            ),  
        
              // fourth row
              Row(
              children: [
                 Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.teal[200],
                    height: 100,
                    width: 100,
                  ),
                ),
                Flexible(
                fit: FlexFit.tight,
                child: 
                Container(
                  color: Colors.pink[200],
                  height: 100,
                  width: 150,
                ),
                ),
            ],
            ),   
          ],
        ),
        
      )
    );
  }
}