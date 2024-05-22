import 'package:flutter/material.dart';

class climate extends StatefulWidget {
  const climate({Key? key}) : super(key: key);

  @override
  State<climate> createState() => _climateState();
}

class _climateState extends State<climate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 28, 62),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // change your color here
        ),
        title: Center(
          child: Text(
            'climate',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 34, 40),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.hdr_auto_rounded,
                    size: 40,
                    color: Colors.white, // specify icon color
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 34, 40),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.ac_unit,
                    size: 40,
                    color: Colors.white, // specify icon color
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 34, 40),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.mode_fan_off_outlined,
                    size: 40,
                    color: Colors.white, // specify icon color
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 34, 40),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.heat_pump,
                    size: 40,
                    color: Colors.white, // specify icon color
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Auto',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Cool',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Fan',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Heat',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(1.0),
              child: Image.asset(
                'assets/meter.png',
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 02,
            ), // Add some space between the image and the new container
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 34, 40),
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
              ),
              width: double.infinity,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AC is ON',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Icon(
                    Icons.toggle_off,
                    size: 80,
                    color: Colors.white38,
                  ),
                  // Remove the extra closing bracket here
                  // Add any other widgets you need here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
