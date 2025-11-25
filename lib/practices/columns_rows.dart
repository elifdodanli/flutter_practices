import 'package:flutter/material.dart';
void main() {
  runApp(const ColumnAndRow());
}

class ColumnAndRow extends StatelessWidget {
  const ColumnAndRow({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Columns and Rows',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Columns and Rows Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Color.fromARGB(255, 17, 45, 105)),
                  SizedBox(width: 10),
                  Icon(Icons.star, color:Color.fromARGB(255, 255, 204, 229)),
                  SizedBox(width: 10),
                  Icon(Icons.star, color: Color.fromARGB(255, 186, 6, 84)),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('enjoy', style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20),
                  Text('the', style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20),
                  Text('little things', style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
        ),
      ),  
    );
  }  
  }
