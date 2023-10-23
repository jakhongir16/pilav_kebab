import 'package:flutter/material.dart';

class Loader5 extends StatefulWidget {
  const Loader5({Key? key, this.color, this.backgroundColor}) : super(key: key);
  final Color ? color;
  final Color ? backgroundColor;
  @override
  State<Loader5> createState() => _Loader5State();
}

class _Loader5State extends State<Loader5> with SingleTickerProviderStateMixin{
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() { });
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CircularProgressIndicator(
          color: widget.color,
          backgroundColor: widget.backgroundColor,
          value: controller.value,

        ),
      ),
    );
  }
}
