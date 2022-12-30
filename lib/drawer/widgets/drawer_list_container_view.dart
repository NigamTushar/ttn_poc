import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newers_world/drawer/bloc/drawer_cubit.dart';
import 'package:newers_world/drawer/model/drawer_model.dart';
import 'package:newers_world/drawer/utils/drawer_const.dart';
import 'package:newers_world/drawer/widgets/drawer_list.dart';
import 'package:newers_world/drawer/widgets/drawer_pages.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/main_router.dart';
import 'package:newers_world/resume/resume_home.dart';

class DrawerListContainerView extends StatelessWidget {
  const DrawerListContainerView({Key? key}) : super(key: key);

  @override
  Drawer build(BuildContext context) {
    final cubit = BlocProvider.of<DrawerCubit>(context);
    return Drawer(
      backgroundColor: Colors.white,
      child: DrawerList(
        itemClick: (pageName) {
          // cubit.onTabSelected(pageName);
          switch (pageName) {
            case DrawerConst.myDashBoardMenu:
              context.router.push(const DrawerScreenRoute());
              break;
            case DrawerConst.myProfile:
              context.router.push(MyProfileRoute(
                  profileName: dashboardProfileName,
                  profileDesignation: profileDesignation,
                  profileImageUrl: dashboardProfileImage));
              break;
            case DrawerConst.attendanceMenu:
              context.router.push(const AttendanceHomeRoute());
              break;
            case DrawerConst.myResume:
              context.router.push(const ResumeHomeRoute());
              break;
            case DrawerConst.whatsNewMenu:
              context.router.push(const WhatsNewHomeRoute());
              break;
            case DrawerConst.importantLinksMenu:
              context.router.push(const ImportantLinksHomeRoute());
              break;
            case DrawerConst.meetNewMenu:
              context.router.push(const NewiHomeRoute());
              break;
            case DrawerConst.myTicketsMenu:
              context.router.push(const MyTicketsHomeRoute());
              break;
            case DrawerConst.newerActionMenu:
              context.router.push(const NewersActionsHomeRoute());
              break;
            case DrawerConst.orgChartMenu:
              context.router.push(const OrgChartsRoute());
              break;
          }
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
