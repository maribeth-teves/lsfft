import 'package:flutter/material.dart';
import 'package:lsfft/widget/navigation_drawer_widget.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar:AppBar(
      title: Text('Activity'),
      backgroundColor: Color.fromRGBO(46, 60, 158, 1),
    ),
  );
}