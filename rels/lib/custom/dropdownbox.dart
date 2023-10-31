import 'package:flutter/material.dart';

class DropdownBox extends StatelessWidget {
  DropdownBox(
      {Key? key,
      this.wide = double.infinity,
      this.texts,
      this.form_field,
      required this.itemlist})
      : super(key: key);

  final String? texts;
  final form_field, wide;
  final itemlist;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(
        //   height: 50,
        //   width: wide,
        //   padding: EdgeInsets.all(14),
        //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Color(0xFF1C6758)),
        //       borderRadius: BorderRadius.circular(15)),
        //   child: DropdownButton(
        //     onChanged: () {},
        //     items: itemlist,
        //     value: form_field,
        //     // decoration: InputDecoration(
        //     //   hintText: texts,
        //     //   border: InputBorder.none,
        //     // ),
        //   ),
        // ),
      ],
    );
  }
}
