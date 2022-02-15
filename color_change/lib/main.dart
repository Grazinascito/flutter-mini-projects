import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  late List<Color> optionsAppBar;
  late List<Color> optionsColorText;
  late List<Color> optionsbackGround;
  late List<String> colors;
  late int actualOption;

  @override
  void initState() {
    super.initState();

    optionsAppBar = [Colors.green, Colors.red, Colors.blue, Colors.purple];

    optionsColorText = [Colors.green, Colors.red, Colors.blue, Colors.purple];

    colors = ["green", "red", "blue", "purple"];

    optionsbackGround = [Colors.green, Colors.red, Colors.blue, Colors.purple];

    actualOption = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Colors"),
            backgroundColor: optionsAppBar[actualOption],
          ),
          body: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  colors[actualOption],
                  style: TextStyle(
                      color: optionsColorText[actualOption], fontSize: 28),
                ),
                const Divider(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (actualOption < optionsAppBar.length - 1) {
                          ++actualOption;
                      }else{
                          actualOption = 0;
                      }
                    });
                  },
                  child: const Text("Change"),
                  style: ElevatedButton.styleFrom(
                    primary: optionsbackGround[actualOption],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
