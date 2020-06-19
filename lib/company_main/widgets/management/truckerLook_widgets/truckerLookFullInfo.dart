import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class TruckerLookFullInfo extends StatelessWidget {
  final int index;

  TruckerLookFullInfo({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Status:'),
                Hero(
                  tag: 'Status' + index.toString(),
                  child: Text('W Trasie'),
                  flightShuttleBuilder: flightShuttleBuilder,
                ),
              ],
            ),
          ),
        ],
        flexibleSpace: appBarLook(context: context),
      ),
      body: Container(
        decoration: bodyLook(context: context),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 150,
                        child: Card(
                          elevation: 3,
                          child: Image.asset(
                            'images/image-512.png',
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Imie: '),
                                Hero(
                                  tag: 'Name' + index.toString(),
                                  child: Text('Stefan', style: TextStyle(fontWeight: FontWeight.normal),),
                                  flightShuttleBuilder: flightShuttleBuilder,
                                ),
                              ],
                            ),
                            Text('Nazwisko: '),
                            Text('Data Zatrudnienia: '),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: <Widget>[
                  Text('Przejechane Km: '),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 175,
                    child: Card(
                      elevation: 5,
                      child: Center(
                        child: Text(
                          'Wykres przejechanych kilometrow z ostatnich 6 mies',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: <Widget>[
                  Text('Obecna Ciezarowka'),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 175,
                    child: Card(
                      elevation: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Ciezarowka: Scania'),
                              Text('Model: R500'),
                              Text('Rok Produkcji: 2019'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Tablice:'),
                              Text('WS 30S3'),
                              Text('Przebieg: 50k'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
