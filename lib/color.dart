import 'package:flutter/material.dart';
import 'forgetpass.dart';

void main() {
  runApp(ColorView());
}

class ColorView extends StatelessWidget {
  const ColorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.50,
                color: Colors.black,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.50,
                color: Colors.green,
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.10,
                color: Colors.black,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.10,
                color: const Color.fromARGB(255, 174, 58, 58),
              ),
            ],
          )
        ],
      ),
    );
  }
}
