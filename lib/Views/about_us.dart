import 'package:flutter/material.dart';

class Entry {
  Entry(this.title,  this.indexString ,[this.children = const <Entry>[]]);
  final String title;
  final String indexString;
  final List<Entry> children;

}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;
  



  TextStyle giveMeBoldFont(Entry root){
    
    if(root.children.isEmpty) {
      return TextStyle(
          fontSize: 17
      );
    }
    return TextStyle(
        fontWeight: FontWeight.w500 ,
        fontSize: 18
    );
  }



  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title:
    Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title ,
        style:
        this.giveMeBoldFont(root),
      ),
      leading: CircleAvatar(
        foregroundColor: Colors.green,
        child: Text(
          root.indexString, style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
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
      'When is the last date to apply to vote by mail?',
      '1',
      <Entry>[
        Entry('Fri. Oct 23 is the last day to request a vote by mail ballot online to be mailed out to you.','',),
      ],
    ),
    Entry(
      'What is the last day to register to vote?',
      '2',
      <Entry>[
        Entry('''Mon. Oct.5 is the last day for Voter Registration in this election cycle for 2020.''',''),
      ],
    ),

    Entry(
      'What date does a mail ballot need to be mailed by?',
      '3',
      <Entry>[
        Entry('''Around Sept. 27th. Mailed ballots need arrive by election day.  It is recommended to send the ballot at least one week before election day.

Tue. Nov. 3rd is the last day to return a vote by mail ballot IN-PERSON at a your local precinct or a Supervisor of Elections office by 7pm.''',''),
      ],
    ),
    Entry(
      'What are ways to submit a ‘mail’ ballot?',
      '4',
      <Entry>[
        Entry('''Mail ballots can be mailed through the postal service or dropped off at secure drop boxes made available by the Supervisor of Elections.  Search for your county's Supervisor of Elections website to find these locations.''',''),
      ],
    ),
    Entry(
      'Why vote by mail?',
      '5',
      <Entry>[
        Entry('''In uncertain times Voting by Mail is a safe and secure way to make sure your ballot is cast.  Voting by Mail is not dependent on precincts being open or upon an individual's availability to vote on Nov 3.  There is also more time available to consider candidates and/or amendment proposals.''',''),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      ),
    );
  }
}
