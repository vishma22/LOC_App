import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

class ss_blocking extends StatefulWidget {
  const ss_blocking({super.key});

  @override
  State<ss_blocking> createState() => _ss_blockingState();
}

class _ss_blockingState extends State<ss_blocking> {
  secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secureScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Secured App"),
          centerTitle: true,
        ),
        body: Center());
  }
}
