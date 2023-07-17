import 'package:flutter/material.dart';
import 'package:fm/dashboard/dashboard.dart';
import 'package:fm/functions/function.dart';
import 'package:fm/radio/fm.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class Home extends StatefulWidget {
  final index;
  const Home(int this.index, {Key? key}) : super(key: key);
  
  @override
  State<Home> createState() => _HomeState(index);
}

class _HomeState extends State<Home> {

  _HomeState(this.index);
  bool _isExpanded = false;
  final int index;

  @override
  Widget build(BuildContext context) {

    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: index);
    final iconSize = 30.0;
    var statusColor = primaryColor();

    List<Widget> _buildScreens() {
      return [
        const Dashboard(),
        Container(),
        const Fm(),
        Container(),
        Container(),
      ];
    }
    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: const Icon(FluentIcons.home_48_filled),
                inactiveIcon: const Icon(FluentIcons.home_48_regular),
                activeColorPrimary: Colors.white,
                inactiveColorPrimary: Colors.white,
                iconSize: iconSize,
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(FluentIcons.heart_48_filled),
                inactiveIcon: const Icon(FluentIcons.heart_48_regular),
                activeColorPrimary: Colors.white,
                inactiveColorPrimary: Colors.white,
                iconSize: iconSize
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(Icons.radio_rounded),
                inactiveIcon: const Icon(Icons.radio_outlined),
                activeColorPrimary: Colors.white,
                inactiveColorPrimary: Colors.white,
                iconSize: iconSize,
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(FluentIcons.tv_48_filled),
                inactiveIcon: const Icon(FluentIcons.tv_48_regular),
                activeColorPrimary: Colors.white,
                inactiveColorPrimary: Colors.white,
                iconSize: iconSize,
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(FluentIcons.person_48_filled),
                inactiveIcon: const Icon(FluentIcons.person_48_regular),
                activeColorPrimary: Colors.white,
                inactiveColorPrimary: Colors.white,
                iconSize: iconSize,
            )
        ];
    }

    return Scaffold(
      appBar: statusBar(statusColor),
      body:PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true, 
        resizeToAvoidBottomInset: true, 
        stateManagement: true, 
        hideNavigationBarWhenKeyboardShows: true, 
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties( 
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation( 
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 500),
        ),
        navBarStyle: NavBarStyle.style5,
        backgroundColor: secondaryColor(),
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [Color(0xff015cae), Color.fromARGB(255, 1, 48, 91)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
    ));
  }
}