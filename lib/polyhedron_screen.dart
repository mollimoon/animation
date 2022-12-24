import 'package:flutter/material.dart';

class PolyhedronScreen extends StatefulWidget {
  const PolyhedronScreen({Key? key}) : super(key: key);

  @override
  State<PolyhedronScreen> createState() => _PolyhedronScreenState();
}

class _PolyhedronScreenState extends State<PolyhedronScreen> {
  bool _visible = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          setState(() {
            _visible = !_visible;
          });
        },
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(seconds: 3),
              child: Image.asset(
                'assets/images/polyhedron.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
