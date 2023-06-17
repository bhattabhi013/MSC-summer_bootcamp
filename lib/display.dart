import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DisplayUserPage extends StatelessWidget {
  final List<dynamic> dataList;
  DisplayUserPage({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Display page'),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('GO back')),
          Expanded(
            child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(dataList[index]['name']['first']),
                    subtitle: Text(dataList[index]['email']),
                    leading: ClipRect(
                      child: Image.network(
                          dataList[index]['picture']['thumbnail']),
                    ),
                    
                  );
                }),
          ),
        ],
      ),
    );
  }
}
