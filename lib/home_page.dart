import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _accessibilityIconIsPressed = false;
  bool _timerIconIsPressed = false;
  bool _androidIconIsPressed = false;
  bool _iphoneIconIsPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mc Flutter")),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        constraints: const BoxConstraints.tightFor(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.account_circle, size: 50.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Flutter McFlutter",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    Text("Experienced App Developer")
                  ],
                )
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("123 Main Street"), Text("(415) 555-0198")],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _accessibilityIconIsPressed =
                          !_accessibilityIconIsPressed;
                    });
                  },
                  icon: const Icon(Icons.accessibility),
                  color: _accessibilityIconIsPressed
                      ? Colors.indigo
                      : Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _timerIconIsPressed = !_timerIconIsPressed;
                    });
                  },
                  icon: const Icon(Icons.timer),
                  color: _timerIconIsPressed ? Colors.indigo : Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _androidIconIsPressed = !_androidIconIsPressed;
                    });
                  },
                  icon: const Icon(Icons.phone_android),
                  color: _androidIconIsPressed ? Colors.indigo : Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _iphoneIconIsPressed = !_iphoneIconIsPressed;
                    });
                  },
                  icon: const Icon(Icons.phone_iphone),
                  color: _iphoneIconIsPressed ? Colors.indigo : Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
