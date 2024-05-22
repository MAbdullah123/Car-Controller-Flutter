import 'package:flutter/material.dart';

import 'climate.dart';

class home extends StatelessWidget {
  const home({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 28, 62),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Porsche GT3',
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(1.0),
              child: Image.asset(
                'assets/gt.png',
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Controls',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 16, 95, 174),
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
              ),
              width: 180,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Engine',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Icon(
                    Icons.toggle_off,
                    size: 50,
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 28, 34, 40),
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    width: 170,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Trunk',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Icon(
                          Icons.toggle_off,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 34, 40),
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
              ),
              width: 180,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Doors',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Icon(
                    Icons.toggle_off,
                    size: 50,
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 16, 95, 174),
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    width: 170,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Climate',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Icon(
                          Icons.toggle_off,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const climate();
                      },
                    ),
                  );
                },
                child: const Text(
                  "Climate",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
