import 'package:flutter/material.dart';

class ImageDialog extends StatefulWidget {
  final String? image;
  const ImageDialog({Key? key, this.image}) : super(key: key);

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "${widget.image}",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
