import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newers_world/drawer/bloc/drawer_cubit.dart';
import 'package:newers_world/drawer/model/drawer_model.dart';
import 'package:newers_world/drawer/widgets/drawer_list.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class DrawerListContainerView extends StatelessWidget {
  const DrawerListContainerView({Key? key}) : super(key: key);

  @override
  Drawer build(BuildContext context) {
    final cubit = BlocProvider.of<DrawerCubit>(context);
    return Drawer(
      backgroundColor: Colors.white,
      child: DrawerList(
        itemClick: (pageName) {
          cubit.onTabSelected(pageName);
          if (ResponsiveWidget.isSmallScreen(context)) {
            Scaffold.of(context).closeDrawer();
          }
        },
        onHover: (pageName, isHover) {
          cubit.onHover(pageName, isHover);
        },
        drawerList: cubit.state.drawerItems ?? DrawerModel.getDrawerList(),
      ),
    );
  }
}
