import 'package:flutter/material.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/seoWidget/app_text.dart';
import 'package:newers_world/tab/racing_next_to_go.dart';
import 'package:newers_world/tab/sports_list.dart';
import 'package:newers_world/tab/sports_popular.dart';
import 'package:seo_service/seo.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            floatingActionButton: !ResponsiveWidget.isLargeScreen(context)
                ? const _BetButton()
                : const SizedBox.shrink(),
            body: Column(
              children: [
                const _HeaderMenu(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Column(
                                  children: [
                                    const _HeaderBetsMenu(),
                                    SizedBox(
                                      width: TabHomeConstant.containerWidth,
                                      child: Stack(
                                        children: [
                                          Card(
                                              elevation: 5.0,
                                              child: Image.asset(
                                                  'assets/race_banner.jpg')),
                                          const Positioned.fill(
                                            child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 20),
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Colors.white,
                                                      size: 30,
                                                    ))),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: TabHomeConstant.containerWidth,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 5),
                                        child: !ResponsiveWidget.isSmallScreen(
                                                context)
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Expanded(
                                                      child: RacingNextToGo()),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Expanded(
                                                      child: SportsPopular()),
                                                ],
                                              )
                                            : Column(
                                                children: const [
                                                  RacingNextToGo(),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  SportsPopular(),
                                                ],
                                              ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: TabHomeConstant.containerWidth,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: SportsList(),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 5),
                                      child: _TermAndCondition(),
                                    ),
                                  ],
                                ),
                              ),
                              if (ResponsiveWidget.isLargeScreen(context)) ...[
                                const SizedBox(width: 380, child: _BetSlip()),
                              ]
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

class _HeaderMenu extends StatelessWidget {
  const _HeaderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: const Color.fromRGBO(0, 133, 56, 1),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          menuContainer(
            child: Row(
              children: [
                Image.asset('assets/menu.png'),
                const SizedBox(
                  width: 5,
                ),
                const AppText(
                  tagStyle: TextTagStyle.h1,
                  text: 'MENU',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          menuContainer(
            child: AppText(
              tagStyle: TextTagStyle.h1,
              text: 'IN-PLAY',
              style: menuTextStyle(),
            ),
          ),
          menuContainer(
            child: Image.asset('assets/tab_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: (!ResponsiveWidget.isLargeScreen(context))
                ? const Icon(
                    Icons.search,
                    color: Colors.white,
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 113, 56, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(0, 113, 56, 1),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    width: 500,
                    child: Center(
                      child: Row(children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        AppText(
                          tagStyle: TextTagStyle.h1,
                          text:
                              'Search for jockeys, trainers, horses, matches and more...',
                          style: TextStyle(color: Colors.white70),
                        )
                      ]),
                    ),
                  ),
          ),
        ]),
        Row(children: [
          menuContainer(
            child: Image.asset('assets/sky.png'),
          ),
          if (!(ResponsiveWidget.isSmallScreen(context)))
            menuContainer(
              child: Image.asset('assets/audio.png'),
            ),
          if (!(ResponsiveWidget.isSmallScreen(context)))
            menuContainer(
              child: Image.asset('assets/video.png'),
            ),
          menuContainer(
            child: AppText(
              tagStyle: TextTagStyle.h1,
              text: 'Login',
              style: menuTextStyle(),
            ),
          ),
          menuContainer(
            child: AppText(
              tagStyle: TextTagStyle.h1,
              text: 'Join',
              style: menuTextStyle(),
            ),
          )
        ]),
      ]),
    );
  }

  TextStyle menuTextStyle() =>
      const TextStyle(color: Colors.white, fontSize: 15);

  Container menuContainer({required Widget child}) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          border: Border(right: BorderSide(width: 1, color: Colors.black12))),
      child: Center(
        child: child,
      ),
    );
  }
}

class _HeaderBetsMenu extends StatelessWidget {
  const _HeaderBetsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        elevation: 5.0,
        child: Row(
          children: HeaderMenuModel.getHeaderMenuData()
              .map((menuData) => Container(
                    height: 92,
                    width: 128,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            left: BorderSide(width: 1, color: Colors.black12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(menuData.imagePath),
                        const SizedBox(
                          height: 8,
                        ),
                        AppText(
                          tagStyle: TextTagStyle.h1,
                          text: menuData.name,
                          style: const TextStyle(),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class _BetSlip extends StatelessWidget {
  const _BetSlip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(242, 242, 242, 1),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromRGBO(58, 152, 44, 1)),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(58, 152, 44, 1)),
                        height: 40,
                        child: const Center(
                            child: AppText(
                          tagStyle: TextTagStyle.h1,
                          text: 'Bet Slip',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    const Expanded(
                      child: Center(
                          child: AppText(
                        tagStyle: TextTagStyle.h1,
                        text: 'Pending Bets',
                        style: TextStyle(),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(children: [
                Image.asset('assets/info.png'),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppText(
                        tagStyle: TextTagStyle.h1,
                        text: 'Click a price to add a bet',
                        style: TextStyle()),
                    SizedBox(
                      height: 2,
                    ),
                    AppText(
                        tagStyle: TextTagStyle.h1,
                        text: 'Add more selection to start a   multi',
                        style: TextStyle())
                  ],
                )
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/help_centre.jpg'),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/lock_in_your_limits.jpg'),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/play_central.jpg'),
          ],
        ),
      ),
    );
  }
}

class _TermAndCondition extends StatelessWidget {
  const _TermAndCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: TabHomeConstant.containerWidth,
      color: const Color.fromRGBO(0, 133, 56, 1),
      child: const Center(
          child: AppText(
        tagStyle: TextTagStyle.h1,
        text:
            'Betting Rules - Terms of Use - Privacy - @Tabcorp Holdings Limited 2021',
        style: TextStyle(
          color: Colors.white,
        ),
      )),
    );
  }
}

class _BetButton extends StatelessWidget {
  const _BetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: const Center(
          child: AppText(
        tagStyle: TextTagStyle.h1,
        text: 'B',
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 133, 56, 1), shape: BoxShape.circle),
    );
  }
}

////////Model////////////
class HeaderMenuModel {
  final String name;
  final String imagePath;

  HeaderMenuModel({required this.name, required this.imagePath});

  static List<HeaderMenuModel> getHeaderMenuData() => [
        HeaderMenuModel(name: 'Promotion', imagePath: 'assets/promotion.png'),
        HeaderMenuModel(name: 'Today\'s Racing', imagePath: 'assets/horse.png'),
        HeaderMenuModel(name: 'BBL', imagePath: 'assets/wicket.png'),
        HeaderMenuModel(name: 'ADB Adelaide', imagePath: 'assets/tennis.png'),
        HeaderMenuModel(name: 'WTA Adelaide', imagePath: 'assets/tennis.png'),
        HeaderMenuModel(name: 'EPL', imagePath: 'assets/epl.png'),
        HeaderMenuModel(name: 'NBA', imagePath: 'assets/nba.png'),
        HeaderMenuModel(
            name: 'Test Cricket Aus vs SA', imagePath: 'assets/wicket.png'),
      ];
}

class TabHomeConstant {
  static const double containerWidth = 1030;
}
