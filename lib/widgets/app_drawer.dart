import 'package:flutter/material.dart';

Drawer appDrawer() {
  return Drawer(
    backgroundColor: const Color(0xff2f4050),
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color(0xff263949),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.black,
              ),
              Text(
                'Rahul Sharma',
                style: TextStyle(color: Colors.white60, fontSize: 14),
              ),
            ],
          ),
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.abc_outlined),
          title: Text('My Dashboard'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.person),
          title: Text('My Profile'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.picture_as_pdf),
          title: Text('My Resume'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.yellow,
          leading: Icon(Icons.star),
          title: Text('What\'s New'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.person_add_alt_1_outlined),
          title: Text('Meet Newi'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.link),
          title: Text('Important Links'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.question_mark),
          title: Text('My Tickets'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.card_membership),
          title: Text('Newer Actions'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.calendar_month),
          title: Text('Attendance'),
          // tileColor: Colors.white60,
        ),
        const ListTile(
          selectedColor: Color(0xff293846),
          textColor: Colors.white60,
          iconColor: Colors.white60,
          leading: Icon(Icons.business),
          title: Text('Org Chart'),
          // tileColor: Colors.white60,
        ),
      ],
    ),
  );
}
