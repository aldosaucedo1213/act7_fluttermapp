import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({Key? key}) : super(key: key);

  @override
  State<Expand> createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpandIcon Example"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.orangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Title',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                ExpandIcon(
                  isExpanded: _isExpanded,
                  color: Colors.white,
                  expandedColor: Colors.black,
                  onPressed: (_) {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                ),
              ],
            ),
          ),
          if (_isExpanded)
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Flutter Mapp'),
            ),
        ],
      ),
    );
  }
}
