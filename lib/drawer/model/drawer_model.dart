import 'package:flutter/material.dart';
import 'package:newers_world/drawer/utils/drawer_const.dart';

class DrawerModel {
  final String name;
  final String id;
  final IconData icon;
  bool? isActive = false;
  bool? isHover = false;

  DrawerModel(
      {required this.name,
      required this.id,
      this.isActive,
      this.isHover,
      required this.icon});

  static List<DrawerModel> getDrawerList() {
    final List<DrawerModel> list = [];
    list.add(DrawerModel(
        name: DrawerConst.myDashBoardMenu, id: '1', icon: Icons.abc_outlined));
    list.add(
        DrawerModel(name: DrawerConst.myProfile, id: '2', icon: Icons.person));
    list.add(DrawerModel(
        name: DrawerConst.myResume, id: '3', icon: Icons.picture_as_pdf));
    list.add(DrawerModel(
        name: DrawerConst.whatsNewMenu, id: '4', icon: Icons.start));
    list.add(DrawerModel(
        name: DrawerConst.meetNewMenu,
        id: '5',
        icon: Icons.person_add_alt_1_outlined));
    list.add(DrawerModel(
        name: DrawerConst.importantLinksMenu, id: '6', icon: Icons.link));
    list.add(DrawerModel(
        name: DrawerConst.myTicketsMenu, id: '7', icon: Icons.question_mark));
    list.add(DrawerModel(
        name: DrawerConst.newerActionMenu,
        id: '8',
        icon: Icons.card_membership));

    list.add(DrawerModel(
        name: DrawerConst.attendanceMenu, id: '9', icon: Icons.calendar_month));
    list.add(DrawerModel(
        name: DrawerConst.orgChartMenu, id: '10', icon: Icons.business));

    return list;
  }
}
