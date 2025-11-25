// business card - Day 20
import 'package:flutter/material.dart';
void main() {
  runApp(const BusinessCardApp());
}
class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Card App',
      home: const BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatefulWidget {
  const BusinessCardScreen({super.key});

  @override
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen> {
  bool showMoreInfo = false;
  
  void toggleMoreInfo() {
    setState(() {
     showMoreInfo = !showMoreInfo;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                
                border: Border.all(color: Colors.pink.shade100,),
                borderRadius: BorderRadius.circular(8.0),
               
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/business_card_image.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                       
                      ),
               
                    ],
                  ),
                  SizedBox(width: 20), // Space between image and text
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                     
                      Text("Elif Dodanlı", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 4),
                      Text("Mobile Engineer"),
                      SizedBox(height: 4),
                      Text("elfdodanli@gmail.com")
                    ],
                  ),
                ],
              ),
            ),
           
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: toggleMoreInfo, child: Text("More Info")),
          if (showMoreInfo) ...[
            SizedBox(height: 20),
            Text("High achiever."),
            Text("Curious mind, always learning."),
            Text("Enthusiast of cars and new technologies."),
          ],
        ],
      ),
    );
  }
}