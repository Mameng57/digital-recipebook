import 'package:flutter/material.dart';

class UnknownFallbackScreen extends StatelessWidget {
  const UnknownFallbackScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page Not Found or Error is Happening..."),
      ),
    );
  }
}
