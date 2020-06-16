import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/company_main/main.dart';
import 'package:nowywygladapkitrucker/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Main',
      theme: basicTheme(),
      home: MyHomePage(title: 'Wybor Firmy'),
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
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            print('Dodaj nowa firme');
            // openCreateCompany(context, user.uid);
          },
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Icon(Icons.lock_outline),
              onPressed: () async {
                print('Wyloguj');
                // return await _auth.signOut(context);
              },
            ),
          ),
        ],
      ),
      body: Container(
        decoration: bodyLook(context: context),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              child: RaisedButton(
                onPressed: () {
                  print('Glowny panel szefa');
                },
                child: Text('Glowny Panel'),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: true
                  ? SingleChildScrollView(
                      child: Container(
                        width: 200, //
                        height: 500, // trzeba ustawic responsywnosc itp
                        child: ListView(
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) {
                                  return CompanyMain();
                                }));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text('Nazwa Firmy - New UI'),
                                  Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        CircularProgressIndicator(),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
