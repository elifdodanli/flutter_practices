import 'package:flutter/material.dart';

void main() {
  runApp(const LightSwitchApp());
}

class LightSwitchApp extends StatelessWidget {
  const LightSwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Light Switch App',
      home: const LightSwitchScreen(),
    );
  }
}        
class LightSwitchScreen extends StatefulWidget{
  const LightSwitchScreen({super.key});

  @override
  State<LightSwitchScreen> createState() => _LightSwitchScreenState();
}

class _LightSwitchScreenState extends State<LightSwitchScreen> {
  bool isLightOn = false;

  void toggleLight(){
    setState(() {
      isLightOn = !isLightOn;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Light Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isLightOn ? Icons.lightbulb :  Icons.lightbulb_outline,
              size: 100,
              color: isLightOn ? const Color.fromARGB(255, 255, 183, 250) : Colors.grey,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleLight,
              child: Text(isLightOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
   
  }
} 
