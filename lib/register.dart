import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'requestController.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final requestController = Get.put(RequestController());
  TextEditingController tNama = TextEditingController();
  TextEditingController tEmail = TextEditingController();
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
                  'Register',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              // TextField(
              //   minLines: 1,
              //   controller: tNama,
              //   decoration: InputDecoration(
              //     hintText: "Nama",
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         width: 3,
              //         color: Colors.black,
              //       ),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         width: 3,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ),
              //   keyboardType: TextInputType.text,
              // ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                minLines: 1,
                controller: tEmail,
                decoration: InputDecoration(
                  hintText: "Email",
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
                  hintText: "Password",
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
                  print('Next ${tEmail.text} dan ${tPass.text}');
                  await requestController.createRegister(
                      context, tEmail.text, tPass.text);
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
                      vertical: 28,
                      horizontal: 150,
                    ),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                child: Text(
                  'Next',
                ),
              )
            ],
          ),
        ));
  }
}
