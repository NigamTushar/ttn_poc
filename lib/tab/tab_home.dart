import 'package:flutter/material.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              child: Column(
                children: [
                  _HeaderMenu(),
                  _HeaderBetsMenu(),
                ],
              ),
            )));
  }
}

class _HeaderMenu extends StatelessWidget {
  const _HeaderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Color.fromRGBO(0, 133, 56,1),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
            children: [
              menuContainer(
                child: Text(
                  'Menu',
                  style: menuTextStyle(),
                ),
              ),

              menuContainer(
                child: Text(
                  'In Play',
                  style: menuTextStyle(),
                ),
              ),
              menuContainer(
                child: Text(
                  'Tab',
                  style: menuTextStyle(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 113, 56,1),
                      border: Border.all(
                        color: Color.fromRGBO(0, 113, 56,1),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),

                  padding: EdgeInsets.symmetric(horizontal: 8),
                  width: 500,
                  child: Center(
                    child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white,),
                          Text('Search for jockeys, trainers, horses, matches and more...', style: TextStyle(color: Colors.white70),)
                        ]),
                  ),
                ),
              ),
            ]),
        Row(children: [
          menuContainer(
            child: Text(
              'Sky',
              style: menuTextStyle(),
            ),
          ),
          menuContainer(
            child: Text(
              'Audio',
              style: menuTextStyle(),
            ),
          ),
          menuContainer(
            child: Text(
              'Video',
              style: menuTextStyle(),
            ),
          ),
          menuContainer(
            child: Text(
              'Login',
              style: menuTextStyle(),
            ),
          ),
          menuContainer(
            child: Text(
              'Join',
              style: menuTextStyle(),
            ),
          )
        ]),
      ]),
    );
  }

  TextStyle menuTextStyle() => TextStyle(color: Colors.white, fontSize: 20);

  Container menuContainer({required Widget child}) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(width: 1, color: Colors.black12))),
      child: Center(
        child: child,
      ),
    );
  }
}

class _HeaderBetsMenu extends StatelessWidget {
  const _HeaderBetsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Row(
        children: HeaderMenuModel.getHeaderMenuData()
            .map((menuData) => Container(
          height: 92,
          width: 128,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  left: BorderSide(width: 1, color: Colors.black12))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              SizedBox(
                height: 8,
              ),
              Text(
                menuData.name,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ))
            .toList(),
      ),
    );
  }
}

////////Model////////////
class HeaderMenuModel {
  final String name;
  final String imagePath;

  HeaderMenuModel({required this.name, required this.imagePath});

  static List<HeaderMenuModel> getHeaderMenuData() => [
    HeaderMenuModel(name: 'Promotion', imagePath: 'd'),
    HeaderMenuModel(name: 'Today\'s Racing', imagePath: 'd'),
    HeaderMenuModel(name: 'BBL', imagePath: 'd'),
    HeaderMenuModel(name: 'ADB Adelaide', imagePath: 'd'),
    HeaderMenuModel(name: 'EPL', imagePath: 'd'),
    HeaderMenuModel(name: 'NBA', imagePath: 'd'),
    HeaderMenuModel(name: 'Test Cricket Aus vs SA', imagePath: 'd'),
  ];
}