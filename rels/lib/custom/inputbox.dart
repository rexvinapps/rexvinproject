import 'package:flutter/material.dart';

class InputDataBox extends StatelessWidget {
  InputDataBox(
      {Key? key,
      this.wide = double.infinity,
      required this.texts,
      this.hints,
      this.form_field})
      : super(key: key);

  final String? texts, hints;
  final form_field, wide;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 20,
        //     ),
        //     Text(
        //       texts ?? '',
        //       style: TextStyle(fontWeight: FontWeight.bold),
        //     ),
        //   ],
        // ),
        Container(
          height: 50,
          width: wide,
          padding: EdgeInsets.all(14),
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF1C6758)),
              borderRadius: BorderRadius.circular(15)),
          child: TextFormField(
            controller: form_field,
            decoration: InputDecoration(
              label: Text(texts ?? ''),
              hintText: hints,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
