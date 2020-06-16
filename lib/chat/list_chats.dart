import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/chat/chat_page/page.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class ListChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        centerTitle: true,
        flexibleSpace: appBarLook(context: context),
      ),
      body: Container(
        decoration: bodyLook(context: context),
        height: double.infinity,
        width: double.infinity,
        //child: Padding(
        // padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              color: (index % 2 == 0) ? Colors.white70 : Colors.grey.shade100,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ChatPage(index: index);
                      },
                    ),
                  );
                  print('Wlaczono Chat ' + index.toString());
                },
                leading: Icon(
                  Icons.image,
                ),
                title: Text('Stasiek W.'),
                trailing: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ), // jezeli nie ma nowej wiadomosci to nie pokazuje ikony
              ),
            );
          },
        ),
        //),
      ),
    );
  }
}
