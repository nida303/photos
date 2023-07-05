import 'package:flutter/material.dart';

class WhtasNew extends StatefulWidget {
  final String? image;
  final String? profile;
  final String? nama;
  final String? user;
  WhtasNew({
    Key? key,
    this.image,
    this.profile,
    this.nama,
    this.user,
  }) : super(key: key);

  @override
  State<WhtasNew> createState() => _WhtasNewState();
}

class _WhtasNewState extends State<WhtasNew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            'assets/images/${widget.image}',
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/${widget.profile}"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.nama}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${widget.user}',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
