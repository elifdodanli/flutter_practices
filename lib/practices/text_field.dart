import 'package:flutter/material.dart';

void main() {
  runApp(const TextFieldExample());
}

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  TextEditingController _nameController = TextEditingController();
  String _displayName = '';
  @override
  dispose() {
    // Clean up the controller when the widget is disposed.
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.pink[100]!,
                      width: 2.0,
                    ),
                  ),
                  prefixIconColor: Colors.pink[100],
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.pink[900]!,
                      width: 2.0,
                    ),
                  ),

                  labelText: 'Enter your name',
                  hintText: 'Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.pink[100],

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.pink[100]!,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.pink[900]!,
                      width: 2.0,
                    ),
                  ),
                  labelText: 'Enter your email',
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.pink[100],
                  foregroundColor: Colors.pink[900],
                ),
                onPressed: () {
                  setState(() {
                    _displayName = _nameController.text;
                  });
                },
                child: const Text('Submit'),
              ),
              SizedBox(height: 20),
              if (_displayName.isNotEmpty)
                Text('Welcome, $_displayName', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
