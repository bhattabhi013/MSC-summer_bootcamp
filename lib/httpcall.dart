import 'dart:convert';

import 'package:demo/display.dart';
import 'package:demo/viewDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class HttpCall extends StatefulWidget {
  const HttpCall({super.key});

  @override
  State<HttpCall> createState() => _HttpCallState();
}

class _HttpCallState extends State<HttpCall> {
  List<dynamic> dataList = [];

  Future<void> fetchData() async {
    var url = Uri.parse('https://randomuser.me/api/?results=5');

    //api call
    var response = await http.get(url);

    //parse
    var jsonData = json.decode(response.body);

    setState(
      () => {
        print(jsonData),
        dataList = jsonData['results'],
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Example'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: fetchData, child: Text('Fetch Data')),

            // to show the list in display page
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: (context) => DisplayUserPage(
            //             dataList: dataList,
            //           ),
            //         ),
            //       );
            //     },
            //     child: Text('Display'),),

            // to view details of a specific user
            Expanded(
                child: ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Hero(
                        tag: 'details',
                        child: ListTile(
                          title: Text(dataList[index]['name']['first']),
                          subtitle: Text(dataList[index]['email']),
                          leading: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ViewDetails(
                                      user: dataList[index],
                                    ),
                                  ),
                                );
                              },
                              child: Text('View Details')),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
