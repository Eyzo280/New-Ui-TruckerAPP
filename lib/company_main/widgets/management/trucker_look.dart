import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/company_main/widgets/management/truckerLook_widgets/truckerLookList.dart';
import 'package:nowywygladapkitrucker/company_main/widgets/management/truckerLook_widgets/truckerLookTopStats.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class TruckerLook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kierowcy'),
        centerTitle: true,
        flexibleSpace: appBarLook(context: context),
      ),
      body: Container(
        decoration: bodyLook(context: context),
        padding: EdgeInsets.all(8),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TruckerLookTopStats(),
            TruckerLookList(),
          ],
        ),
      ),
    );
  }
}
