import 'package:flutter/material.dart';

import 'homepage.dart';
import 'forgetpass.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController tUser = TextEditingController();
  TextEditingController tPass = TextEditingController();

  bool isHide = true;
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
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 30.0,
            top: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 40.0,
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
                  hintText: "Username",
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                minLines: 1,
                style: TextStyle(
                  color: Colors.black,
                ),
                obscureText: isHide,
                controller: tPass,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: isHide
                        ? Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.black,
                          ),
                    onPressed: () {
                      setState(
                        () {
                          isHide = !isHide;
                        },
                      );
                    },
                  ),
                  hintText: "Password",
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
                  labelStyle: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextButton(
                onPressed: () async {
                  print('Login ${tUser.text} dan ${tPass.text}');
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePageView(),
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
                      vertical: 25,
                      horizontal: 145,
                    ),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                child: Text(
                  'LOG IN',
                ),
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
                child: Text(
                  'Forget password?',
                ),
              ),
            ],
          ),
        ));
  }
}
