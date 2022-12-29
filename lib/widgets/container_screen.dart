import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newers_world/drawer/bloc/drawer_cubit.dart';
import 'package:newers_world/drawer/bloc/drawer_state.dart';
import 'package:newers_world/drawer/widgets/drawer_list_container_view.dart';
import 'package:newers_world/drawer/widgets/drawer_menu.dart';
import 'package:newers_world/drawer/widgets/drawer_pages.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrawerCubit(),
      child:  DrawerBody(child: child,),
    );
  }
}

class DrawerBody extends StatelessWidget {
   DrawerBody({Key? key, required this.child}) : super(key: key);
  final Widget child;
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
                    color: Colors.grey[100],
                    child: child,
                  ),
                  drawer: const DrawerListContainerView(),
                ),
              )
            ],
          );
        });
  }
}
