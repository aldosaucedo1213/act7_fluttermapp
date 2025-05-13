import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino extends StatefulWidget {
  const Cupertino({Key? key}) : super(key: key);

  @override
  State<Cupertino> createState() => _CupertinoState();
}

class _CupertinoState extends State<Cupertino> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino Picker"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Value = $_selectedValue'),
            onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoPicker(
                  backgroundColor: Colors.white,
                  itemExtent: 30,
                  scrollController: FixedExtentScrollController(
                    initialItem: _selectedValue,
                  ),
                  children: const [
                    Text('0'),
                    Text('1'),
                    Text('2'),
                  ],
                  onSelectedItemChanged: (int value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
