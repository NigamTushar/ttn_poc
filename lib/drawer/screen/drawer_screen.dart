import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newers_world/drawer/bloc/drawer_cubit.dart';
import 'package:newers_world/drawer/bloc/drawer_state.dart';
import 'package:newers_world/drawer/widgets/drawer_list_container_view.dart';
import 'package:newers_world/drawer/widgets/drawer_menu.dart';
import 'package:newers_world/drawer/widgets/drawer_pages.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrawerCubit(),
      child: const DrawerBody(),
    );
  }
}

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerSelectedState>(
        builder: (context, state) {
      return Row(
        children: [
          if (ResponsiveWidget.isLargeScreen(context) ||
              ResponsiveWidget.isMediumScreen(context))
            const DrawerListContainerView(),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                title: Text(state.tabName),
                leading: const DrawerMenu(),
              ),
              body: Container(
                color: Colors.grey[300],
                child: DrawerPages(
                  pageName: state.tabName,
                ),
              ),
              drawer: const DrawerListContainerView(),
            ),
          )
        ],
      );
    });
  }
}
