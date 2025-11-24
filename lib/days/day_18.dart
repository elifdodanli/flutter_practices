import 'package:flutter/material.dart';

// --- Custom Stateless Widget ---
// This widget is reusable and never changes its appearance on its own.
class GreetingCard extends StatelessWidget {
    // 1. Define final properties (The data the widget needs).
    final String mainText;
    final String secondaryText;

    // Constructor to receive the data.
    const GreetingCard({
        super.key,
        required this.mainText,
        required this.secondaryText,
    });

    @override
    Widget build(BuildContext context) {
        // 2. The build method defines the UI by composing other widgets.
        return Column(
            // CrossAxisAlignment centers children horizontally in the Column.
            crossAxisAlignment: CrossAxisAlignment.center,
            // 3. The children property holds the list of widgets arranged vertically.
            children: [
                Text(
                    mainText,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // Add some space between the two texts
                const SizedBox(height: 8), 
                Text(
                    secondaryText,
                    style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
            ],
        );
    }
}

// --- Application Entry Point ---
void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Stateless Composition Example',
            theme: ThemeData(
                primarySwatch: Colors.teal,
                useMaterial3: true,
            ),
            home: const HomeScreen(),
        );
    }
}

// --- The Screen Widget ---
class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Day 18: Stateless Widget'),
            ),
            body: const Center(
                // We use our custom Stateless Widget here, passing the data it needs.
                child: GreetingCard(
                    mainText: 'Welcome, Flutter Learner!',
                    secondaryText: 'You are mastering widget composition.',
                ),
            ),
        );
    }
}