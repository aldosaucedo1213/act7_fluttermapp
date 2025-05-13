import "package:flutter/material.dart";

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio", textAlign: TextAlign.center),
        centerTitle: true, // Centra el título
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Animated");
              },
              child: const Text("ver pantalla Animated pandding"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/BottomNavegation");
              },
              child: const Text("ver pantalla Bottom Navigation"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/CloseBottom");
              },
              child: const Text("ver pantalla Close Bottom"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/CupertinoPicker");
              },
              child: const Text("ver pantalla Cupertino Picker"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/DatePicker");
              },
              child: const Text("ver pantalla Date Picker"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ExpandIcons");
              },
              child: const Text("ver pantalla Expand Icon"),
            ),
          ),
        ],
      ),
    );
  }
}
