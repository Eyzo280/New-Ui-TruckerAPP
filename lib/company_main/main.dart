import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/company_main/drawer.dart';
import 'package:nowywygladapkitrucker/company_main/lastTracks.dart';
import 'package:nowywygladapkitrucker/company_main/map.dart';
import 'package:nowywygladapkitrucker/company_main/topBody.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class CompanyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Main',
      theme: basicTheme(),
      home: MyHomePage(title: 'Company Main'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        flexibleSpace: appBarLook(context: context),
      ),
      drawer: DrawerCompanyMain(),
      body: Container(
        decoration: bodyLook(context: context),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            TopBodyCompanyMain(),
            LastTracksCompanyMain(),
            MapCompanyMain()
          ],
        ),
      ),
    );
  }
}
