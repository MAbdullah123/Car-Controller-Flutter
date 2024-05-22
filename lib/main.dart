import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_car/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 1, 30, 54),
          elevation: 10.0,
        ),
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 28, 62),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: -120,
            child: Image.asset(
              'assets/1.png',
              width: 2000,
              height: 900,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Take The ',
                        style: TextStyle(
                          color: Colors.white, // First half color
                          fontSize: 60,
                        ),
                      ),
                      TextSpan(
                        text: 'Control',
                        style: TextStyle(
                          color: Color.fromARGB(
                              255, 17, 106, 195), // Second half color
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 320),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const home()),
                    );
                  },
                  child: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 11, 57, 104),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      CircleBorder(),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(100, 100),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tap to Unlock Car',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
