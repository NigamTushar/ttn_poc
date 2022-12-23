import 'package:equatable/equatable.dart';
import 'package:newers_world/drawer/model/drawer_model.dart';

abstract class DrawerState extends Equatable {}

class DrawerSelectedState extends DrawerState {
  final String tabName;
  final String hoverTabName;
  final List<DrawerModel>? drawerItems;

  DrawerSelectedState(
      {required this.tabName, required this.hoverTabName, this.drawerItems});

  @override
  List<Object?> get props => [tabName, drawerItems, hoverTabName];

  DrawerSelectedState copyWith(
      {String? tabName, String? hoverTabName, List<DrawerModel>? drawerItems}) {
    return DrawerSelectedState(
      tabName: tabName ?? this.tabName,
      hoverTabName: hoverTabName ?? this.tabName,
      drawerItems: drawerItems ?? this.drawerItems,
    );
  }
}
