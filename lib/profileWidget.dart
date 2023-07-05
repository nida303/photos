import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  final String? menu;
  final dynamic icon;
  final Function()? ontap;
  ProfileView(
      {Key? key, required this.menu, required this.icon, required this.ontap})
      : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        GestureDetector(
          onTap: widget.ontap!,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                widget.icon,
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  widget.menu!,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
