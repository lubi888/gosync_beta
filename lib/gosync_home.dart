import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './main.dart';
import './gosync_about.dart';
import './gosync_appbar.dart';
import './gosync_navdrawer.dart';
import './gosync_home.dart';
import './gosync_text.dart';
import './gosync_about.dart';
import './gosync_scrollbar0.dart';
import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';
import './gosync_windows_install.dart';
import './gosync_apple_install.dart';
import './gosync_linux_install.dart';
import './gosync_uninstall.dart';
import './gosync_urllinks.dart';

class GoSyncHome extends StatelessWidget {
  const GoSyncHome({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    () => Scaffold.of(context).openDrawer();
    // TabController: tabController();
    debugPrint("gosync_home & tabs loaded");
    return const Scaffold(
        // TabController tabController;

        drawer: GoSyncNavDrawer(),
        body: TabBarView(
            // controller: TabController(length: 3, vsync: this),
            children: <Widget>[
              GoSyncScrollbar0(),
              GoSyncScrollbar1(),
              GoSyncScrollbar2(),
              // GoSyncAbout(),
              // gosyncscrollbar2(),
            ])

      // body: DefaultTabController(
      //   initialIndex: 0,
      //     length: 3,
      //     controller: TabController(length: 3, vsync: this),
      //     children: <Widget>[
      //       GoSyncScrollbar0(),
      //       GoSyncScrollbar1(),
      //       GoSyncScrollbar2(),
      //       // GoSyncAbout(),
      //       // gosyncscrollbar2(),
      //     ]

        // child: Scaffold(
        //   appBar: GoSyncAppBar(),
        //   drawer: GoSyncNavDrawer(),
        //   // endDrawer: GoSyncOpenDrawer(),
        //   body: GoSyncHome(
        //     title: goSyncTitle,
        //   ),
        //   //add bottom navigation from top app || side nav drawer.
        //   // bottomNavigationBar: GoSyncBottomNavBar(),
        //   // drawerDragStartBehavior:
        // ),

      // ),


      // home: const DefaultTabController(
      //   // controller = TabController(vsync: this, length: 3);
      //   initialIndex: 0,
      //   length: 3,
      //   child: Scaffold(
      //     appBar: GoSyncAppBar(),
      //     drawer: GoSyncNavDrawer(),
      //     // endDrawer: GoSyncOpenDrawer(),
      //     body: GoSyncHome(
      //       title: goSyncTitle,
      //     ),
      //     //add bottom navigation from top app || side nav drawer.
      //     // bottomNavigationBar: GoSyncBottomNavBar(),
      //     // drawerDragStartBehavior:
      //   ),
      // ),
    );
  }
}