import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shalgat01',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      color: Colors.white,
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int hizgaar = 50;
  int count = 0;

  void nemeh() {
    if (count < hizgaar) {
      setState(() {
        count++;
      });

      print("negeer nemegdlee");
    } else {
      print("Hizgaar hetersen");
    }
  }

  void hasah() {
    if (count > 0) {
      setState(() {
        count--;
      });
    } else {
      print("Utga alga");
    }
  }

  void reset() {
    setState(() {
      count = 0;
    });
    print("Reset hiigdsen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$count',
                  style: GoogleFonts.lobster(fontSize: 200, color: Colors.grey),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          nemeh();
                        },
                        icon: const Icon(
                          Icons.add_circle,
                          size: 70,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: IconButton(
                          onPressed: () {
                            nemeh();
                          },
                          icon: const Icon(
                            Icons.remove_circle_outline_outlined,
                            size: 70,
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: reset,
                      child: Text('     RESET     ',
                          style: GoogleFonts.lobster(fontSize: 30)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
