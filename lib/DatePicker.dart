import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text("Choose Date"),
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (dateTime != null) {
                  setState(() {
                    selectedDate = dateTime;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
