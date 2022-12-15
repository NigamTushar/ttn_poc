import 'package:flutter/material.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context) ||
        ResponsiveWidget.isMediumScreen(context)) {
      Scaffold.of(context).closeDrawer();
    }
    return Builder(builder: (context) {
      return Visibility(
        visible: ResponsiveWidget.isSmallScreen(context),
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      );
    });
  }
}
