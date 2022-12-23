import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newers_world/drawer/bloc/drawer_cubit.dart';
import 'package:newers_world/drawer/bloc/drawer_state.dart';
import 'package:newers_world/drawer/model/drawer_model.dart';

class DrawerList extends StatefulWidget {
  final Function(String) itemClick;
  final Function(String, bool) onHover;
  final List<DrawerModel> drawerList;

  const DrawerList(
      {Key? key,
      required this.itemClick,
      required this.drawerList,
      required this.onHover})
      : super(key: key);

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerSelectedState>(
        builder: (context, state) {
      return Container(
        width: 230,
        color: const Color(0xff293846),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int itemCount) {
            if (itemCount == 0) {
              return Column(
                children: const [
                  SizedBox(height: 20,),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=2'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('To The New',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.none)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Tushar@tothenew.com',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.none)),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  )
                ],
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: MenuItem(
                    widget: widget,
                    drawerItems: widget.drawerList,
                    itemCount: itemCount),
              );
            }
          },
          itemCount: 11,
          shrinkWrap: false,
        ),
      );
    });
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key? key,
      required this.widget,
      required this.drawerItems,
      required this.itemCount})
      : super(key: key);

  final DrawerList widget;
  final List<DrawerModel> drawerItems;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final isActive = drawerItems[itemCount - 1].isActive == true;
    final isHover = drawerItems[itemCount - 1].isHover == true;
    return Container(
      child: InkWell(
        onTap: () {
          widget.itemClick(drawerItems[itemCount - 1].name);
        },
        onHover: (val) {
          if (val) {
            widget.onHover(drawerItems[itemCount - 1].name, true);
          } else {
            widget.onHover(drawerItems[itemCount - 1].name, false);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: isHover?const Color(0xff000614):const Color(0xff293846),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Icon(
                          drawerItems[itemCount - 1].icon,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          drawerItems[itemCount - 1].name,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              decoration:
                                  drawerItems[itemCount - 1].isHover == true
                                      ? TextDecoration.underline
                                      : TextDecoration.none),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

}
