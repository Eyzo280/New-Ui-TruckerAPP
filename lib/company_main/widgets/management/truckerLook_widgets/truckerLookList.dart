import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/company_main/widgets/management/truckerLook_widgets/truckerLookFullInfo.dart';

class TruckerLookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      fit: FlexFit.loose,
      child: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.grey.shade100,
                child: ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(3),
                      child: Image.asset('images/image-512.png')),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Imie:'),
                      Text('Pensja:'),
                      Text('Status:'),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Hero(
                        tag: 'Name' + index.toString(),
                        child: Text('Stefan'),
                      ),
                      Text('8000 zl'),
                      Hero(
                        tag: 'Status' + index.toString(),
                        child: Text('W trasie'),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return TruckerLookFullInfo(index: index);
                        },
                      ));
                    },
                    icon: Icon(Icons.folder_open),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
