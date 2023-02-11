// This is an example of the widget : Animated List
import 'package:flutter/material.dart';

class Widget012 extends StatefulWidget {
  const Widget012({super.key});

  @override
  State<Widget012> createState() => _Widget012State();
}

class _Widget012State extends State<Widget012> {
  final _items = []; // list of items
  final GlobalKey<AnimatedListState> _key =
      GlobalKey(); // This assigns a global key which would be use by the animated list widget

  void _addItem() {
    // this function adds value to the list
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _removeItems(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.redAccent,
            child: ListTile(
              title: Text('Deleted', style: TextStyle(fontSize: 25)),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            IconButton(
              onPressed: _addItem,
              icon: const Icon(Icons.add),
            ),
            Expanded(
                child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  key: UniqueKey(),
                  child: Card(
                      margin: const EdgeInsets.all(10),
                      color: Colors.orangeAccent,
                      child: ListTile(
                        title: Text(_items[index],
                            style: const TextStyle(fontSize: 25)),
                        trailing: IconButton(
                            onPressed: () {
                              _removeItems(index);
                            },
                            icon: const Icon(Icons.delete)),
                      )),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
