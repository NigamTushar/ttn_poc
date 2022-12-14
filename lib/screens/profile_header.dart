import 'package:flutter/material.dart';
import 'package:newers_world/helper/constants.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class ProfileHeader extends StatefulWidget {
  final Function(int)? onTabChange;

  const ProfileHeader({Key? key,this.onTabChange}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProfileHeaderState(onTabChange);
}

class ProfileHeaderState extends State<ProfileHeader>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final Function(int)? onTabChange;

  ProfileHeaderState(this.onTabChange);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener((){
      if(onTabChange != null){
        onTabChange!(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      constraints: const BoxConstraints(minWidth: 100),
      decoration: const BoxDecoration(color: Colors.white),
      child: SizedBox(
        height: ResponsiveWidget.isLargeScreen(context) ? 200 : 300,
        child: Stack(
          children: <Widget>[
            Container(
              height: ResponsiveWidget.isLargeScreen(context) ? 80 : 00,
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Container(
              height: ResponsiveWidget.isLargeScreen(context) ? 120 : 240,
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black26,
                    Colors.black45,
                    Colors.black54
                  ],
                ),
              ),
            ),
            ResponsiveWidget.isLargeScreen(context)
                ? getOrgChar(context)
                : Align(
                    alignment: Alignment.topRight,
                    child: getOrgChar(context),
                  ),
            Positioned(
              top: ResponsiveWidget.isLargeScreen(context) ? 60 : 160,
              left: ResponsiveWidget.isLargeScreen(context) ? 140 : 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rahul Sharma',
                    style: TextStyle(
                        fontSize: Constants.headingFontSize,
                        color: Colors.white),
                  ),
                  Text(
                    'Software Engineer',
                    style: TextStyle(
                        fontSize: Constants.subHheadingFontSize,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: ResponsiveWidget.isLargeScreen(context) ? 50 : 40,
              left: ResponsiveWidget.isLargeScreen(context) ? 0 : 20,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(100), //<-- SEE HERE
                    ),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundImage:
                          NetworkImage('https://picsum.photos/250?image=2'),
                    ),
                  ),
                  if (ResponsiveWidget.isLargeScreen(context)) ...[
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 10),
                          decoration: const BoxDecoration(color: Colors.green),
                          height: 5.0,
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, left: 5),
                          child: Text(
                            '94%',
                            style: TextStyle(
                                fontSize: Constants.normalTextFontSize,
                                color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                  ]
                ],
              ),
            ),
            Positioned(
              height: ResponsiveWidget.isLargeScreen(context) ? 50 : 45,
              top: ResponsiveWidget.isLargeScreen(context) ? 150 : 255,
              left: ResponsiveWidget.isLargeScreen(context) ? 150 : 20,
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.green,
                indicatorWeight: 3,
                labelColor: Colors.green,
                controller: _tabController,
                tabs: const [
                  Text(
                    'Employment Information',
                  ),
                  Text(
                    'Personal Information',
                  ),
                  Text(
                    'Profile Details',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getOrgChar(BuildContext context) {
    return Positioned(
      top: ResponsiveWidget.isLargeScreen(context) ? 50 : 40,
      left: ResponsiveWidget.isLargeScreen(context) ? 320 : 20,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Icon(Icons.add_chart),
      ),
    );
  }
}