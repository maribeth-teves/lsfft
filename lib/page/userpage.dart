import 'package:flutter/material.dart';
import 'package:lsfft/widget/navigation_drawer_widget.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlUserIcon;

  const UserPage({
    Key? key,
    required this.name,
    required this.urlUserIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar:AppBar(
      title: Text('User Page'),
      backgroundColor: Color.fromRGBO(46, 60, 158, 1),
    ),
    body: Image.network(
      urlUserIcon,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}