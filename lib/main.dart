// Main entry point for the Flutter application
import 'package:flutter/material.dart'; //radha129

// The main function starts the app by running MyApp widget
void main() {
  runApp(const MyApp()); //woman
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Builds the MaterialApp widget with theme and home page
  @override
  Widget build(BuildContext context) {
    // hello
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Application theme settings
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Home page widget, which is stateful to manage counter state
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Title for the home page, passed from parent widget
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State class for MyHomePage, manages the counter and UI updates
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Counter variable

  // Increments the counter and updates the UI
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Builds the UI for the home page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
