import 'package:flutter/material.dart';
import 'package:lsfft/main.dart';
import 'package:lsfft/page/activitypage.dart';
import 'package:lsfft/page/sendreceivepage.dart';
import 'package:lsfft/page/userpage.dart';

// This is the Navbar. Use buildMenuItem(text, icon) in order to add a new menu item.
class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Placeholder Name';
    final sub = 'Subheader';
    final urlUserIcon = 'https://i.gyazo.com/dc5c13ce1c48e06f0109323330f1f738.png';

    return Drawer(
        child: Material(
            color: Color.fromRGBO(46, 60, 158, 1),
            child: ListView(
                children: <Widget>[
                  buildHeader(
                      urlUserIcon: urlUserIcon,
                      name: name,
                      sub: sub,
                      onClicked: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                UserPage(
                                  name: name,
                                  urlUserIcon: urlUserIcon,
                                ),
                          )
                          )),
                  const SizedBox(height: 10),
                  buildMenuItem(
                      text: 'Home',
                      icon: Icons.house,
                      onClicked: () => selectedItem(context, 0)
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                      text: 'Activity',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 1)
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                      text: 'Send & Receive',
                      icon: Icons.money,
                      onClicked: () => selectedItem(context, 2)
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Payment Information',
                    icon: Icons.credit_card,
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Profile',
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Help & Support',
                    icon: Icons.question_answer,
                  ),
                  const SizedBox(height: 10),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Sign Out',
                    icon: Icons.logout,
                  ),
                ]
            )
        )
    );
  }

  Widget buildHeader({
    required String urlUserIcon,
    required String name,
    required String sub,
    required VoidCallback onClicked,
  }) =>
      InkWell(
          onTap: onClicked,
          child: Container(
              padding: padding.add(EdgeInsets.symmetric(vertical: 20)),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 30, backgroundImage: NetworkImage(urlUserIcon)),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 20, color: Colors.white)
                  ),
                  const SizedBox(height:4),
                  Text(
                      sub,
                      style: TextStyle(fontSize: 14, color: Colors.white)
                      )
                    ]
                  )
                ],
              )
          )
      );


  // Use once for each entry on the navbar. Requires a text, icon and onClick parameter.
  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap:  onClicked,
    );
  }

  // redirection for each page. index is for each page, ex home is 0.
  // this is where we alter pages to redirect to.
  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyHomePage(title: 'Home'),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ActivityPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SendReceiveMoneyPage(),
        ));
        break;
    }
  }
}