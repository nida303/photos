import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/homepage.dart';
import 'helperController.dart';

class RequestController extends GetxController {
  final helperController = Get.put(HelperController());

  createUser(BuildContext context, var username, var pass) async {
    return helperController.post(
        path: "api/users",
        onSuccess: (data) {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Login Berhasil"),
                    content: Container(
                      child: Text("Selamat Anda Berhasil login"),
                    ),
                    actions: [
                      TextButton(
                        child: Text('Ok'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ));
          print(data);
        },
        onError: (error) {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Gagal login"),
                    content: Container(
                      child: Text("coba lagi"),
                    ),
                    actions: [
                      TextButton(
                        child: Text('Ok'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ));
          print(error);
        },
        body: {"name": username, "job": pass});
  }

  createRegister(BuildContext context, var email, var pass) async {
    print(email);
    print(pass);
    return helperController.post(
        path: "api/register",
        onSuccess: (data) {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("registrasi Berhasil"),
                    content: Container(
                      child: Text("Selamat Anda Berhasil registrasi"),
                    ),
                    actions: [
                      TextButton(
                        child: Text('Ok'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ));
          print(data);
        },
        onError: (error) {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("gagal registrasi"),
                    content: Container(
                      child: Text("coba cek email dan password"),
                    ),
                    actions: [
                      TextButton(
                        child: Text('Ok'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ));
          print(error);
        },
        body: {
          "email": email,
          "password": pass,
        });
  }

  createLogin(BuildContext context, var email, var pass) async {
    return helperController.post(
        path: "api/login",
        onSuccess: (data) {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("login berhasil"),
                    content: Container(
                      child: Text(
                          "Selamat anda login berhasil dengan token ${data['token']}"),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Get.to(HomePageView());
                          },
                          child: Text('ok'))
                    ],
                  ));
        },
        onError: (onError) {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Gagal login"),
                    content: Container(
                      child: Text("coba lagi"),
                    ),
                    actions: [
                      TextButton(
                        child: Text('Ok'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ));
        },
        body: {
          "email": email,
          "password": pass,
        });
  }
}
