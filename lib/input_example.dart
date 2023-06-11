import 'package:demo/customTextfield.dart';
import 'package:flutter/material.dart';

class InputClass extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Fields Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CustomText(
                ctrl: _nameController,
                label: 'Name',
              ),
              // TextField(
              //   controller: _nameController,
              //   decoration: InputDecoration(
              //     labelText: 'Name',
              //   ),
              // ),
              SizedBox(height: 16.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  String name = _nameController.text;
                  String email = _emailController.text;
                  print('Name: $name');
                  print('Email: $email');
                },
                child: Text('Submit'),
              ),
              TextButton(
                  onPressed: () {
                    String name = _nameController.text;
                    String email = _emailController.text;
                    print('Name: $name');
                    print('Email: $email');
                    //setState(() {});
                  },
                  child: Text('submit'))
            ],
          ),
        ),
      ),
    );
  }
}
