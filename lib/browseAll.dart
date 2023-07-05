import 'package:flutter/material.dart';

import 'imagePop.dart';

class BrowseAllView extends StatefulWidget {
  final String? image1;
  final String? image2;
  BrowseAllView({Key? key, this.image1, this.image2}) : super(key: key);

  @override
  State<BrowseAllView> createState() => _BrowseAllViewState();
}

class _BrowseAllViewState extends State<BrowseAllView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () async {
            await showDialog(
              context: context,
              builder: (context) {
                Future.delayed(Duration(seconds: 3), () {
                  Navigator.of(context).pop(true);
                });
                return ImageDialog(
                  image: widget.image1,
                );
              },
            );
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.height * 0.20,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(widget.image1!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            await showDialog(
              context: context,
              builder: (context) {
                Future.delayed(Duration(seconds: 3), () {
                  Navigator.of(context).pop(true);
                });
                return ImageDialog(
                  image: widget.image2,
                );
              },
            );
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.height * 0.20,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(widget.image2!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
