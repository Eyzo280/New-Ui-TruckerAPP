import 'package:flutter/material.dart';

class TruckerLookTopStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: double.infinity,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Wolnych:'),
                      Text('3', style: TextStyle(fontWeight: FontWeight.normal),),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: double.infinity,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('W trasie:'),
                      Text('3', style: TextStyle(fontWeight: FontWeight.normal),),
                    ],
                  ),
                ),
              ),
            ),Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: double.infinity,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Najlepszy:'),
                      Text('Stasiek W', style: TextStyle(fontWeight: FontWeight.normal),),
                    ],
                  ),
                ),
              ),
            ),Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: double.infinity,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Nalezne:'),
                      Text('25000 zl', style: TextStyle(fontWeight: FontWeight.normal),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
