import 'package:flutter/material.dart';

//!AnimatedPadding

class AnimatedPaddings extends StatefulWidget {
  const AnimatedPaddings({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddings> createState() => _AnimatedPaddingsState();
}

class _AnimatedPaddingsState extends State<AnimatedPaddings> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            child: const Text('Change padding'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text('Padding = $padValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
