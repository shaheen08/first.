import 'package:flutter/material.dart';
import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDragAndDropList(),
    );
  }
}

class MyDragAndDropList extends StatefulWidget {
  @override
  _MyDragAndDropListState createState() => _MyDragAndDropListState();
}

class _MyDragAndDropListState extends State<MyDragAndDropList> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop List Example'),
      ),
      body: DragAndDropLists(
        children: items
            .map((item) => DragAndDropItem(
          child: ListTile(
            title: Text(item),
          ),
        ))
            .toList(),
        onItemReorder: (oldIndex, newIndex) {
          setState(() {
            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
