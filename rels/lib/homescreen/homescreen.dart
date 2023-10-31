import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF8F1),
      appBar: AppBar(
        centerTitle: true,
        // bottom: PreferredSize(
        //     preferredSize: Size.zero,
        //     child: Text(
        //       'ReLS',
        //       style: TextStyle(color: Color(0xFFDAFFFB)),
        //     )),
        title: Text(
          'Promotion Page',
          style: TextStyle(color: Color(0xFFFAF8F1)),
        ),
        backgroundColor: Color(0xFFC58940),
      ),
      body: Center(child: Text("Promotion Pages")),
    );
  }
}
