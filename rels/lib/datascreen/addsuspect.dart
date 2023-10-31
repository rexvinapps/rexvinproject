import 'package:flutter/material.dart';
import 'package:rels/custom/inputbox.dart';

class AddSuspect extends StatelessWidget {
  AddSuspect({super.key});
  TextEditingController _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Suspect'),
      ),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InputDataBox(
                texts: 'Nama',
                form_field: _nama,
                hints: 'Enter Customer Name',
              ),
              InputDataBox(
                texts: 'No. Handphone',
                form_field: _nama,
                hints: 'Enter Customer Phone Number',
              ),
              InputDataBox(
                texts: 'Sumber',
                form_field: _nama,
              )
            ],
          ),
        ),
      ),
    );
  }
}
