import 'package:flutter/material.dart';

void main() {
  runApp(const StackExample());
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Night Sky Stack Example",
      home: Scaffold(
        body: Stack(
          children: [
            // Background
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xFF0D1B2A),
            ),

            // Moon
            const Positioned(
              top: 40,
              left: 40,
              child: Icon(
                Icons.nightlight_round,
                size: 40,
                color: Color(0xFFFFF7CC),
              ),
            ),

            Positioned(
              top: 330,
              left: 0,
              right: 0,
              child: Column(
                children: const [
                  Text(
                    "It was a wonderful night,",
                    style: TextStyle(fontSize: 20, color: Colors.white),
            
                  ),
                  SizedBox(height: 8),
                  Text(
                    "such a night as is only possible",
                    style: TextStyle(fontSize: 20, color: Colors.white),
              
                  ),
                  SizedBox(height: 8),
                  Text(
                    "when we are young, dear reader.",
                    style: TextStyle(fontSize: 20, color: Colors.white),
              
                  ),
                  SizedBox(height: 16),
                  Text(
                    "The sky was so starry, so bright.",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  
                  ),
                ],
              ),
            ),

            // stars
            const Positioned(top: 80, left: 200, child: Icon(Icons.star, size: 12, color: Color(0xFFFDF5C9))),
            const Positioned(top: 120, left: 260, child: Icon(Icons.star, size: 9, color: Color(0xFFF6E7B5))),
            const Positioned(top: 60, right: 100, child: Icon(Icons.star, size: 10, color: Color(0xFFFFF1B2))),
            const Positioned(top: 150, right: 70, child: Icon(Icons.star, size: 14, color: Color(0xFFFFF7D6))),
            const Positioned(top: 200, left: 200, child: Icon(Icons.star, size: 12, color: Color(0xFFFDF5C9))),
            const Positioned(top: 500, left: 220, child: Icon(Icons.star, size: 9, color: Color(0xFFF6E7B5))),
            const Positioned(top: 250, right: 30, child: Icon(Icons.star, size: 10, color: Color(0xFFFFF1B2))),
            const Positioned(top: 300, left: 80, child: Icon(Icons.star, size: 8, color: Colors.white)),
            const Positioned(top: 350, right: 60, child: Icon(Icons.star, size: 10, color: Colors.white)),
            const Positioned(bottom: 120, left: 150, child: Icon(Icons.star, size: 7, color: Colors.white)),
            const Positioned(bottom: 80, right: 200, child: Icon(Icons.star, size: 9, color: Colors.white)),
            const Positioned(top: 500, right: 90,  child: Icon(Icons.star, size: 10, color: Colors.white)),
            const Positioned(bottom: 120, left: 150, child: Icon(Icons.star, size: 7, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
