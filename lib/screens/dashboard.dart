import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:newers_world/helper/breakpoint.dart';
import 'package:newers_world/widgets/dashboard_info_card.dart';

import '../helper/constants.dart';
import '../widgets/app_drawer.dart';
import '../widgets/page_header.dart';
import '../widgets/user_detail_card.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  var _unHideDrawer = true;

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    // TODO - min and max sizing as in case of desktop applications it is needed.
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final Breakpoint breakpoint =
          Breakpoint.fromConstraints(constraints, type: BreakType.large);
      return Row(
        children: [
          if (_screenSize.width > 760 && _unHideDrawer) appDrawer(),
          Expanded(
            child: Scaffold(
              backgroundColor: Colors.grey[300],
              appBar: AppBar(
                leading: Builder(builder: (BuildContext context) {
                  return IconButton(
                    onPressed: () {
                      if (_screenSize.width > 760) {
                        setState(() {
                          _unHideDrawer = !_unHideDrawer;
                        });
                      } else {
                        Scaffold.of(context).openDrawer();
                      }
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.green,
                    ),
                  );
                }),
                title: const Text(
                  'App bar',
                  // style: TextStyle(color: Colors.blueGrey),
                ),
                backgroundColor: Colors.white70,
                elevation: 0,
              ),
              drawer: appDrawer(),
              body: ListView(
                children: [
                  PageHeader(
                    width: _screenSize.width,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: _screenSize.width,
                    height:
                        _screenSize.height - AppBar().preferredSize.height - 80,
                    child: SingleChildScrollView(
                      child: StaggeredGrid.count(
                        mainAxisSpacing: breakpoint.gutters, // 20.0,
                        crossAxisSpacing: breakpoint.gutters, //20.0,
                        crossAxisCount: Breakpoint.useColumns(
                            breakpoint.columns,
                            4), // (_screenSize.width > 980) ? 3 : 1,
                        children: [
                          // TODO:- Make a check in vertical mode the hieght will be 445 and in
                          // horizontal mode[Normal], it will be 300
                          // This can be done using sizing checks
                          StaggeredGridTile.count(
                            crossAxisCellCount:
                                (_screenSize.width > 980) ? 2 : 1,
                            mainAxisCellCount: 1,
                            child: UserDetailCard(
                              width: _screenSize.width * 0.66,
                            ),
                          ),
                          // UserDetailCard(width: _screenSize.width * 0.66,),

                          // Stakeholder card
                          const StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: DashboardInfoCard(
                              boxTitle: 'My Stakeholders',
                              cardType: CardType.stakeholder,
                              // width: _screenSize.width * 0.33,
                            ),
                          ),

                          // To Do List Card
                          StaggeredGridTile.count(
                            crossAxisCellCount:
                                (_screenSize.width > 980) ? 2 : 1,
                            mainAxisCellCount: 1,
                            child: const DashboardInfoCard(
                              boxTitle: 'My To-Do List',
                              cardType: CardType.toDo,
                            ),
                          ),

                          // invisible Card
                          if (_screenSize.width > 760)
                            const StaggeredGridTile.count(
                              crossAxisCellCount: 1,
                              mainAxisCellCount: 1,
                              child: SizedBox(),
                            ),

                          // TeamInfo card
                          StaggeredGridTile.count(
                            crossAxisCellCount:
                                (_screenSize.width > 980) ? 2 : 1,
                            mainAxisCellCount: 1,
                            child: const DashboardInfoCard(
                              boxTitle: 'My Project Team - HARK Audio T&M-1',
                              cardType: CardType.myTeam,
                            ),
                          ),

                          // Watchlist
                          const StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: DashboardInfoCard(
                              boxTitle: 'My Watchlist',
                              cardType: CardType.watchList,
                            ),
                          ),

                          // Newer Recognition
                          StaggeredGridTile.count(
                            crossAxisCellCount:
                                (_screenSize.width > 980) ? 2 : 1,
                            mainAxisCellCount: 1,
                            child: DashboardInfoCard(
                              boxTitle: 'Recognize a Newer - ',
                              cardType: CardType.newerRecognition,
                              width: _screenSize.width,
                            ),
                          ),

                          // Bookmark
                          const StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: DashboardInfoCard(
                                boxTitle: 'Bookmarks',
                                cardType: CardType.bookmarks),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
