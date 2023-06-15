import 'package:demo/models/countermodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  final String title;
  ProviderPage({super.key, required this.title});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MainModel>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You've pressed button this many times"),
                Text('${model.counter}'),
                ElevatedButton(
                  onPressed: () => model.counter++,
                  child: Text('change'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
