import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  @override
  _AnimatedListExampleState createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  List<int> _listData = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    _populateListData();
  }

  void _populateListData() {
    for (int i = 0; i < 5; i++) {
      _listData.add(i);
    }
  }

  void _addItem() {
    int index = _listData.length;
    _listData.add(index);

    _listKey.currentState!.insertItem(index);
  }

  void _removeItem(int index) {
    _listKey.currentState!.removeItem(
      index,
      (context, animation) => _buildListItem(context, index, animation),
    );

    _listData.removeAt(index);
  }

  Widget _buildListItem(
      BuildContext context, int index, Animation<double> animation) {
    final item = _listData[index];

    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text('Item $item'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => _removeItem(index),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List Example'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _listData.length,
        itemBuilder: (context, index, animation) {
          return _buildListItem(context, index, animation);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}
