import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/company_main/widgets/searchEmployees/filtrList.dart';
import 'package:nowywygladapkitrucker/company_main/widgets/searchEmployees/searchingList.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class SearchEmployees extends StatefulWidget {
  @override
  _SearchEmployeesState createState() => _SearchEmployeesState();
}

class _SearchEmployeesState extends State<SearchEmployees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        centerTitle: true,
        flexibleSpace: appBarLook(context: context),
        actions: <Widget>[Icon(Icons.filter_list)],
      ),
      body: Container(
        decoration: bodyLook(context: context),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            FiltrList(),
            /* Linia oddzielajaca
            Divider(
              color: Colors.black,
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 0,
            ),
            */
            SearchingList()
          ],
        ),
      ),
    );
  }
}
