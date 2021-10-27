import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int rand() {
    List<int> values = List.generate(256, (_) => _);
    values.shuffle();
    return values[2];
  }

  void onTap() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          color: Color.fromRGBO(rand(), rand(), rand(), 1),
          duration: const Duration(milliseconds: 200),
          child: const Center(
            child: Text(
              'Hey there',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
