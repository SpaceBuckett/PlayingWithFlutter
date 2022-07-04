import 'package:flutter/material.dart';

class UseCaseScreen extends StatefulWidget {
  const UseCaseScreen({Key? key}) : super(key: key);

  @override
  State<UseCaseScreen> createState() => _UseCaseScreenState();
}

class _UseCaseScreenState extends State<UseCaseScreen> {
  bool _visible = true;

  void _toggleContainerVisibility() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fade a Widget in and out'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Click Here'),
                Icon(Icons.arrow_downward),
              ],
            ),
            onTap: () {
              _toggleContainerVisibility();
              print('I am being pressed value is: $_visible');
            },
          ),
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _toggleContainerVisibility,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.flip),
      // ),
    );
  }
}
