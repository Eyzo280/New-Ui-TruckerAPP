import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/company_main/widgets/searchEmployees/detailsEmployee.dart';

class SearchingList extends StatefulWidget {
  @override
  _SearchingListState createState() => _SearchingListState();
}

class _SearchingListState extends State<SearchingList> {
  final Color colorContent = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 9,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print('Pokaz Szczegoly');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsEmployee(
                  index: index,
                );
              }));
            },
            child: Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
              child: Card(
                child: ListTile(
                  leading: Hero(
                    tag: 'img_Employee' + index.toString(),
                    child: Image.asset('images/image-512.png'),
                  ),
                  title: Hero(
                    tag: 'name' + index.toString(),
                    child: Text('Marek Wladyslawski', style: TextStyle(color: colorContent),),
                  ),
                  subtitle: Text('Przejechane km: 500', style: TextStyle(color: colorContent),),
                  trailing: IconButton(
                    icon: Hero(
                      tag: 'button_invite' + index.toString(),
                      child: Icon(Icons.insert_invitation, color: colorContent,),
                    ),
                    onPressed: () {
                      print('Wyslij Zaproszenie');
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
