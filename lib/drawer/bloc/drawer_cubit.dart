import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newers_world/drawer/bloc/drawer_state.dart';
import 'package:newers_world/drawer/model/drawer_model.dart';

class DrawerCubit extends Cubit<DrawerSelectedState> {
  DrawerCubit()
      : super(DrawerSelectedState(
      tabName: 'Home',
      drawerItems: DrawerModel.getDrawerList(),
      hoverTabName: ''));

  void onTabSelected(String pageName) {
    state.drawerItems?.forEach((element) {
      if (pageName == element.name) {
        element.isActive = true;
      } else {
        element.isActive = false;
      }
    });
    emit(state.copyWith(tabName: pageName, drawerItems: state.drawerItems));
  }

  void onHover(String pageName, bool isHover) {
    state.drawerItems?.forEach((element) {
      if (isHover) {
        if (pageName == element.name) {
          element.isHover = isHover;
        } else {
          element.isHover = false;
        }
      }else{
        element.isHover = false;
      }
    });
    emit(
        state.copyWith(hoverTabName: pageName, drawerItems: state.drawerItems));
  }
}
