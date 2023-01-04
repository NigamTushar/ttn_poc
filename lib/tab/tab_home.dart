import 'package:flutter/material.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/tab/racing_next_to_go.dart';
import 'package:newers_world/tab/sports_popular.dart';

/*Widget build(BuildContext context) {
  return MaterialApp(
      home: Scaffold(
          body: Container(
            child: Center(
              child: Row(
                children: [
                  Column(
                    children: [
                      _HeaderMenu(),
                      _HeaderBetsMenu(),
                      Stack(
                        children: [
                          Card(elevation:5.0, child: Image.asset('assets/race_banner.jpg')),
                          Positioned.fill(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.arrow_forward_ios, color: Colors.white,size: 30,))),
                          ),
                        ],
                      ),
                    ],
                  ),
                  _BetSlip(),
                ],
              ),
            ),
          )));
}*/
class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
              children: [
                _HeaderMenu(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Flexible(
                flex: 1,
                child: Column(
                  children: [
                    _HeaderBetsMenu(),
                    Container(
                      width: 1030,
                      child: Stack(
                        children: [
                          Card(
                              elevation: 5.0,
                              child: Image.asset('assets/race_banner.jpg')),
                          Positioned.fill(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 30,
                                    ))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                    ),
                  Container(width: 380,child: _BetSlip()),
                  ]),
              ],
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
      color: Color.fromRGBO(0, 133, 56, 1),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          menuContainer(
            child: Row(
              children: [
                Image.asset('assets/menu.png'),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'MENU',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          menuContainer(
            child: Text(
              'IN-PLAY',
              style: menuTextStyle(),
            ),
          ),
          menuContainer(
            child: Image.asset('assets/tab_logo.png'),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 113, 56, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 113, 56, 1),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              padding: EdgeInsets.symmetric(horizontal: 8),
              width: 500,
              child: Center(
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Text(
                    'Search for jockeys, trainers, horses, matches and more...',
                    style: TextStyle(color: Colors.white70),
                  )
                ]),
              ),
            ),
          ),
        ]),
        Row(children: [
          menuContainer(
            child: Image.asset('assets/sky.png'),
          ),
          menuContainer(
            child: Image.asset('assets/audio.png'),
          ),
          menuContainer(
            child: Image.asset('assets/video.png'),
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

  TextStyle menuTextStyle() => TextStyle(color: Colors.white, fontSize: 15);

  Container menuContainer({required Widget child}) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(right: BorderSide(width: 1, color: Colors.black12))),
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
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
                        Image.asset(menuData.imagePath),
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
      ),
    );
  }
}

class _BetSlip extends StatelessWidget {
  const _BetSlip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Card(
            elevation: 10,
            child: Container(
      decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(58, 152, 44, 1)), borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Color.fromRGBO(58, 152, 44, 1)),
                      height: 40,
                      child: Center(child: Text('Bet Slip', style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Center(child: Text('Pending Bets')),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Image.asset('assets/help_centre.jpg'),
          SizedBox(height: 10,),
          Image.asset('assets/lock_in_your_limits.jpg'),
          SizedBox(height: 10,),
          Image.asset('assets/play_central.jpg'),
        ],
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
        HeaderMenuModel(name: 'Promotion', imagePath: 'assets/promotion.png'),
        HeaderMenuModel(name: 'Today\'s Racing', imagePath: 'assets/horse.png'),
        HeaderMenuModel(name: 'BBL', imagePath: 'assets/wicket.png'),
        HeaderMenuModel(name: 'ADB Adelaide', imagePath: 'assets/tennis.png'),
        HeaderMenuModel(name: 'WTA Adelaide', imagePath: 'assets/tennis.png'),
        HeaderMenuModel(name: 'EPL', imagePath: 'assets/epl.png'),
        HeaderMenuModel(name: 'NBA', imagePath: 'assets/nba.png'),
        HeaderMenuModel(
            name: 'Test Cricket Aus vs SA', imagePath: 'assets/wicket.png'),
      ];
}
