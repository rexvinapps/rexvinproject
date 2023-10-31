import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rels/routes/routenames.dart';

class CustomerLeads extends StatelessWidget {
  const CustomerLeads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          highlightElevation: 10,
          hoverColor: Color(0xFFE5BA73),
          backgroundColor: Color(0xFFC58940),
          onPressed: () {
            Get.toNamed(RouteName.addsuspect);
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Color(0xFFFAF8F1),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Customer Leads',
            style: TextStyle(color: Color(0xFFFAF8F1)),
          ),
          backgroundColor: Color(0xFFC58940),
        ),
        body: Center(
          child: Text("Customer Leads"),
        ));
  }
}
