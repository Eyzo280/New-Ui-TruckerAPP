import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class DetailsEmployee extends StatelessWidget {
  final int index;

  DetailsEmployee({@required this.index});

  Widget topDetail({@required context}) {
    return Flexible(
      // Zdj imie, nazwisko itp.
      fit: FlexFit.tight,
      flex: 2,
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              width: (MediaQuery.of(context).size.width -
                      MediaQuery.of(context).padding.vertical -
                      10) *
                  0.5,
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Hero(
                      tag: 'img_Employee' + index.toString(),
                      child: Image.asset('images/image-512.png'))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Imie: '),
                Text('Nazwisko: '),
                Container(
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.vertical -
                          10) *
                      0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Nr Tel: '),
                      IconButton(
                          icon: Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          onPressed: () => print('Zadzwon'))
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.vertical -
                          10) *
                      0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Chat: '),
                      IconButton(
                          icon: Icon(
                            Icons.chat,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            /*
                                Chat(
                                        mainUid: widget.companyData.uidCompany,
                                        peopleUid: widget.driverData.driverUid)
                                    .searchChat(context);
                                    */
                            print('Wlacz Chat');
                          })
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget midDetail({@required context}) {
    return Flexible(
      // Szczegolowe informacje
      fit: FlexFit.tight,
      flex: 2,
      child: Container(
        width: double.infinity,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Przejechane Km: '),
                Text('Zarejsetrowany od: '),
                Text('Prawo jazdy od: '),
                Text('Kursy Wschod/Zachod'),
                Text('Pozwolenia: ADR'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomDetail({@required context}) {
    return Flexible(
      // Dodatkowe informacje, ktore wypisze pracownik
      fit: FlexFit.tight,
      flex: 1,
      child: Container(
        width: double.infinity,
        child: Card(
          child: Container(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    margin: EdgeInsets.all(0),
                    color: Theme.of(context).primaryColorDark,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text('Dodatkowe Informacje'),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                            'Jestem Stefan, mam doswiadczenie, jezdzilem kilka lat do roznych zakatkow swiata.'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
            tag: 'name' + index.toString(), child: Text('Marek Wladyslawski')),
        centerTitle: true,
        flexibleSpace: appBarLook(context: context),
        actions: <Widget>[
          IconButton(
            icon: Hero(
              tag: 'button_invite' + index.toString(),
              child: Icon(Icons.insert_invitation),
            ),
            onPressed: () {
              print('Wyslij Zaproszenie');
            },
          ),
        ],
      ),
      body: Container(
        decoration: bodyLook(context: context),
        child: Column(
          children: <Widget>[
            topDetail(context: context),
            midDetail(context: context),
            bottomDetail(context: context),
          ],
        ),
      ),
    );
  }
}
