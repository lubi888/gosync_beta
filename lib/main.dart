import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter/services.dart'; // for root bundle
// import 'package:json_theme/json_theme.dart';
// import 'dart:convert'; // json decode
import './gosync_about.dart';
import './gosync_appbar.dart';
import './gosync_navdrawer.dart';
import './gosync_home.dart';
import './gosync_text.dart';
import './gosync_scrollbar0.dart';
import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';
import './gosync_windows_install.dart';
import './gosync_apple_install.dart';
import './gosync_linux_install.dart';
import './gosync_uninstall.dart';
import './gosync_install_primary.dart';
import './gosync_install_secondary.dart';
import './gosync_install_tertiary.dart';
// import './gosync_urllinks.dart';

void main() {
  runApp(const GoSync());
}

class GoSync extends StatelessWidget {
  const GoSync({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: goSyncTitle,
      // theme: ThemeData(),
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   useMaterial3: true,
      //
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.purple,
      //     // ···
      //     brightness: Brightness.dark,
      //   ),
      //   textTheme: TextTheme(
      //     displayLarge: const TextStyle(
      //       fontSize: 72,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     // ···
      //     titleLarge: GoogleFonts.oswald(
      //       fontSize: 30,
      //       fontStyle: FontStyle.italic,
      //     ),
      //     bodyMedium: GoogleFonts.merriweather(),
      //     displaySmall: GoogleFonts.pacifico(),
      //   ),
      // ),
      initialRoute: '/',
      routes: {
        '/home': (BuildContext context) => const GoSyncHome(title: goSyncTitle),
        '/about': (BuildContext context) => const GoSyncAbout(),
        '/appbar': (BuildContext context) => const GoSyncAppBar(),
        '/navdrawer': (BuildContext context) => const GoSyncNavDrawer(),
        '/scrollbar0': (BuildContext context) => const GoSyncScrollbar0(),
        '/scrollbar1': (BuildContext context) => const GoSyncScrollbar1(),
        '/scrollbar2': (BuildContext context) => const GoSyncScrollbar2(),
        '/windowsInstall': (BuildContext context) =>
            const GoSyncWindowsInstall(),
        '/appleInstall': (BuildContext context) => const GoSyncAppleInstall(),
        '/linuxInstall': (BuildContext context) => const GoSyncLinuxInstall(),
        '/unInstall': (BuildContext context) => const GoSyncUninstall(),
        '/install_primary': (BuildContext context) =>
            const GoSyncInstallPrimary(),
        '/install_secondary': (BuildContext context) =>
            const GoSyncInstallSecondary(),
        '/install_tertiary': (BuildContext context) =>
            const GoSyncInstallTertiary(),
        // '/text': (BuildContext context) => const GoSyncText(),
        // '/urlLinks': (BuildContext context) => const GoSyncUrlLinks(),
      },
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fr'), // Francais
        Locale('de'), // Deutsch
        // Locale('ga'), // Gaeilge
      ],
      home: const DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: GoSyncAppBar(),
          drawer: GoSyncNavDrawer(),
          // endDrawer: GoSyncOpenDrawer(),
          body: GoSyncHome(
            title: goSyncTitle,
          ),
          //add bottom navigation from top app || side nav drawer.
          // bottomNavigationBar: GoSyncBottomNavBar(),
          // drawerDragStartBehavior:
        ),
      ),
    );
  }
}
