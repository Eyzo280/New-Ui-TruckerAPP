import 'package:flutter/material.dart';
import 'package:nowywygladapkitrucker/chat/chat_page/page.dart';
import 'package:nowywygladapkitrucker/theme.dart';

class ListChats extends StatelessWidget {
  Widget _flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    );
  }

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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                  title: Hero(
                    tag: 'NameChat' + index.toString(),
                    child: Text('Stasiek W.'),
                    flightShuttleBuilder: _flightShuttleBuilder,
                  ),
                  trailing: Stack(
                    children: <Widget>[
                      new Icon(Icons.notifications),
                      new Positioned(
                        // draw a red marble
                        top: 0.0,
                        right: 0.0,
                        child: new Icon(Icons.brightness_1,
                            size: 8.0, color: Colors.redAccent),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        //),
      ),
    );
  }
}
