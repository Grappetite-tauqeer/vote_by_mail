import 'package:flutter/material.dart';

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

class AboutUs extends StatelessWidget {
// The entire multilevel list displayed by this app.
  final List<Entry> data = <Entry>[
    Entry(
      '• When is the last date to apply to vote by mail?',
      <Entry>[
        Entry('Info 1 Detail'),
      ],
    ),
    Entry(
      '• What date dos a mail ballot need to be mailed by?',
      <Entry>[
        Entry('Info 2 Detail'),
      ],
    ),
    Entry(
      '• What are ways to submit a ‘mail’ ballot?',
      <Entry>[
        Entry('Info 3 Detail'),
      ],
    ),
    Entry(
      '• Why vote by mail?',
      <Entry>[
        Entry('Info 4 Detail'),
      ],
    ),

    /*Entry(
  'Chapter A',
  <Entry>[
  Entry(
  'Section A0',
  <Entry>[
  Entry('Item A0.1'),
  Entry('Item A0.2'),
  Entry('Item A0.3'),
  ],
  ),
  Entry('Section A1'),
  Entry('Section A2'),
  ],
  ),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}
