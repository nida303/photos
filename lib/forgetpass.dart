import 'package:flutter/material.dart';

import 'login.dart';

class ForgetPassView extends StatefulWidget {
  const ForgetPassView({Key? key}) : super(key: key);

  @override
  ForgetPassViewState createState() => ForgetPassViewState();
}

class ForgetPassViewState extends State<ForgetPassView> {
  TextEditingController tUser = TextEditingController();
  TextEditingController tPass = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset('assets/images/Back.png'),
        ),
        backgroundColor: const Color.fromARGB(255, 128, 26, 26),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 30.0,
          top: 50.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Cari akun anda',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              minLines: 1,
              controller: tUser,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                ),
                hintText: "Username atau email",
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: () async {
                print('Login ${tUser.text} dan ${tPass.text}');
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPassView(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 128,
                  ),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              child: Text(
                'Selanjutnya',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
