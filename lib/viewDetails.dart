import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ViewDetails extends StatelessWidget {
  final dynamic user;
  const ViewDetails({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 100,
        ),
        Hero(
          tag: 'details',
          child: ListTile(
            title: Text(user['name']['first']),
            subtitle: Text(user['email']),
            leading: ClipRect(
              child: Image.network(user['picture']['thumbnail']),
            ),
          ),
        ),
      ]),
    );
  }
}
