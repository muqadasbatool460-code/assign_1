
import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Assignment 1',
theme: ThemeData(
primarySwatch: Colors.deepPurple,
),
home: const SplashScreen(),
);
}
}

class SplashScreen extends StatelessWidget {
const SplashScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.deepPurple,
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Icon(
Icons.phone_android,
size: 90,
color: Colors.white,
),
const SizedBox(height: 20),
const Text(
'My First App',
style: TextStyle(
fontSize: 30,
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 30),
ElevatedButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => const SignupScreen(),
),
);
},
child: const Text('Get Started'),
),
],
),
),
);
}
}

class SignupScreen extends StatelessWidget {
const SignupScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Sign Up')),
body: const Center(
child: Text('Sign Up Screen'),
),
);
}
}
