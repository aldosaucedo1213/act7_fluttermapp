import 'package:flutter/material.dart';

class CloseBottom extends StatelessWidget {
  const CloseBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Close Button Example"),
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
        child: CloseButton(
          color: Colors.red,
          onPressed: () {
            debugPrint("Do something");
            // También podrías usar: Navigator.pop(context); si quisieras cerrar la pantalla.
          },
        ),
      ),
    );
  }
}
