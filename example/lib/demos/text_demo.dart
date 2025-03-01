import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

class TextDemo extends StatefulWidget {
  const TextDemo({Key? key}) : super(key: key);
  @override
  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  var _alignment = MongolTextAlign.top;

  void _updateAlignment(MongolTextAlign alignment) {
    setState(() {
      _alignment = alignment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MongolText')),
      body: Stack(
        children: [
          Column(
            children: [
              Button(
                title: 'top',
                onPressed: () => _updateAlignment(MongolTextAlign.top),
              ),
              Button(
                title: 'center',
                onPressed: () => _updateAlignment(MongolTextAlign.center),
              ),
              Button(
                title: 'bottom',
                onPressed: () => _updateAlignment(MongolTextAlign.bottom),
              ),
              Button(
                title: 'justify',
                onPressed: () => _updateAlignment(MongolTextAlign.justify),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                color: Colors.blue[100],
                child: MongolText(
                  text,
                  style: const TextStyle(fontSize: 30),
                  textAlign: _alignment,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: MaterialButton(
        minWidth: 100,
        elevation: 8,
        color: Colors.blue,
        child: Text(title),
        onPressed: onPressed,
      ),
    );
  }
}

const text = 'ᠨᠢᠭᠡ ᠬᠣᠶᠠᠷ ᠭᠤᠷᠪᠠ ᠳᠦᠷᠪᠡ ᠲᠠᠪᠤ ᠵᠢᠷᠭᠤᠭ᠎ᠠ ᠳᠣᠯᠣᠭ᠎ᠠ ᠨᠠᠢᠮᠠ ᠶᠢᠰᠦ ᠠᠷᠪᠠ';
