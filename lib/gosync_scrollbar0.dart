import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import './main.dart';
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
import './gosync_urllinks.dart';

// import 'package:json_theme/json_theme.dart';
// import 'package:gosync/gosync_text.dart';
// import 'package:google_fonts/google_fonts.dart';

// import './gosync_urllinks.dart';
// import './ethsync_walletdrawer.dart';
// import './ethsync_barcodescanner.dart';
// import './ethsync_extendedimage.dart';
// import './ethsync_scrollbar0.dart';
// import './ethsync_scrollbar1.dart';

import './gosync_scrollbar2.dart';

const String _kAsset1 = 'assets/images/golang_developers.png';
const String _kAsset2 = 'assets/images/_kAsset32.png';
const String _kAsset3 = 'assets/images/footer-gopher.jpg';
const String _kAsset4 = 'assets/images/gethTerm.png';

class GoSyncScrollbar0 extends StatelessWidget {
  const GoSyncScrollbar0({super.key});

  // ScrollController scrollbarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    debugPrint('scrollbar0 loaded install Golang');
    ScrollController scrollbarController = ScrollController();

    return Scaffold(
      // print("home loaded GoSyncScrollbar0 Home");
      // return const Placeholder();
      // debugPrint('scrollbar0 loaded install Golang');

      // final yourScrollScrollbarController = ScrollScrollbarController();
      // const Scaffold();
      // return Scrollbar(
      // appBar: AppBar,
      appBar: AppBar(
        // title: const Text('Tiny AppBar with hamburger button'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const GoSyncNavDrawer(),
      body: Scrollbar(
        controller: scrollbarController,
        // thumbVisibility: true,
        // controller: yourScrollController,
        // controller: ScrollController.hasClients,
        // controller: PrimaryScrollController.of(context),
        child: ListView(
          controller: scrollbarController,
          children: <Widget>[
            const Text(
              'Home \nInstall Golang Page 0',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50.0),
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: const Text(
                "platform installation",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
              leading: const Icon(
                FontAwesomeIcons.computer,
                color: Colors.green,
              ), //add icon
              childrenPadding:
                  const EdgeInsets.only(left: 30), //children padding
              children: [
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.windows,
                      color: Colors.lightBlue,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'windows platform golang',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'windows go install',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.windows,
                        color: Colors.lightGreen),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/windowsInstall');
                    }),
                // list tile 5 deep link youtube
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.apple,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit Apple iOS',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'apple programming',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.apple,
                        color: Colors.blueGrey),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/appleInstall');
                    }),
                // list tile 5 deep link youtube
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.linux,
                      color: Colors.red,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit Linux golang install',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'deep link linux',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing:
                        const Icon(FontAwesomeIcons.linux, color: Colors.blue),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/linuxInstall');
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.trash,
                      color: Colors.yellow,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'uninstall',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'multiple versions and uninstall directions',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.purple),
                    ),
                    trailing: const Icon(FontAwesomeIcons.trashCan,
                        color: Colors.pink),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/unInstall');
                    }),
              ],
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: const Text(
                "go commands",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              ),
              leading: const Icon(
                FontAwesomeIcons.laptopCode,
                color: Colors.blue,
              ), //add icon
              childrenPadding:
                  const EdgeInsets.only(left: 30), //children padding
              children: [
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.code,
                      color: Colors.pink,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'go cli common commands',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.teal),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'cli command line interface',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.pink),
                    ),
                    trailing: const Icon(FontAwesomeIcons.codeCompare,
                        color: Colors.green),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      _launchGoCommands();
                    }),
                // list tile 5 deep link XTwitter
                // list tile 5 deep link youtube
              ],
            ),
            // expansion tile install levels
            ExpansionTile(
              initiallyExpanded: true,
              title: const Text(
                "go installation levels",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.yellow),
              ),
              // leading: Icon(Icons.person), //add icon
              leading: const Icon(
                Icons.school,
                // FontAwesomeIcons.googleScholar,
                color: Colors.red,
              ),
              childrenPadding: const EdgeInsets.only(
                  left: 20), //children padding origianlly 60
              children: [
                // Divider(color: Colors.grey.shade400, indent: 72.0, height: 1.0),
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.windows,
                      color: Colors.lightBlue,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'windows basic go install using gorretct directory structure && setting environment variables.',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.yellow),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'windows go install windows basic go install using gorretct directory structure && setting environment variables.golang',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.green),
                    ),
                    // isThreeLine: true,
                    trailing: const Icon(FontAwesomeIcons.windows,
                        color: Colors.lightGreen),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/install_primary');
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.apple,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'container Install & collaborative goup coding',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'docker & kubernetes container go production & github hookup ',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.apple,
                        color: Colors.blueGrey),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/install_secondary');
                    }),
                // list tile 5 deep link youtube
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.linux,
                      color: Colors.red,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'go pro. production professional environment',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'professional go production environment',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing:
                        const Icon(FontAwesomeIcons.linux, color: Colors.blue),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/install_tertiary');
                    }),
                // const Padding(
                //   padding: EdgeInsets.all(16.0),
                //   child: Text('==== Official Website ====',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(color: Colors.redAccent)),
                // ),
              ],
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: const Text(
                "go IDEs",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.yellow),
              ),
              // leading: Icon(Icons.person), //add icon
              leading: const Icon(
                Icons.integration_instructions_outlined,
                // FontAwesomeIcons.googleScholar,
                color: Colors.yellow,
              ),
              childrenPadding: const EdgeInsets.only(
                  left: 20), //children padding origianlly 60
              children: [
                // Divider(color: Colors.grey.shade400, indent: 72.0, height: 1.0),
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.windows,
                      color: Colors.lightBlue,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit Visual Studio Code.',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.yellow),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'fast, open source and just add golang extension',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.green),
                    ),
                    // isThreeLine: true,
                    trailing: const Icon(FontAwesomeIcons.windows,
                        color: Colors.lightGreen),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchVisualStudioCode();
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.codeFork,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit Jetbrains GoLand',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'professional IDE try for free. Pro version about \$300 per annum ',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.desktop,
                        color: Colors.blueGrey),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchJetbrainsGoLand();
                    }),
                // list tile 5 deep link youtube
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.linux,
                      color: Colors.red,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit VIm Golang',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'stalworth vim plugin',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.windows,
                        color: Colors.blue),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchVimGo();
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.codeBranch,
                      color: Colors.yellow,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit LiteIDE',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.purple),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'advanced IDE code editor',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing:
                        const Icon(FontAwesomeIcons.desktop, color: Colors.red),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchLiteIDE();
                    }),
              ],
            ),
            // try something new drawer header 2
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(_kAsset2), fit: BoxFit.contain),
              ),
              child: Text(
                // drawerHeader 'go designers,
                AppLocalizations.of(context)!.drawerHeader2,
                // style: const TextStyle(color: Colors.purpleAccent),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.visible,
                // softWrap: true,
                // maxLines: 2,
                style: const TextStyle(
                  // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.yellow,
                ),
              ),
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: const Text(
                "go.dev",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent),
              ),
              leading: const Icon(
                FontAwesomeIcons.golang,
                color: Colors.amber,
              ), //add icon
              childrenPadding:
                  const EdgeInsets.only(left: 30), //children padding
              children: [
                ListTile(
                    leading: const Icon(
                      // Icons.access_alarms,
                      FontAwesomeIcons.golang,
                      color: Colors.redAccent,
                    ),
                    title: const Text(
                      'main go website',
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                    subtitle: const Text(
                      'visit go.dev',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.redAccent),
                    ),
                    trailing:
                        const Icon(FontAwesomeIcons.google, color: Colors.blue),
                    onTap: () {
                      // Navigator.pop(context);
                      // Navigator.of(context).pop();
                      _launchGoDev();
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.account_balance,
                      FontAwesomeIcons.golang,
                      color: Colors.teal,
                    ),
                    title: Text(
                      AppLocalizations.of(context)!.visitGoDevPlay,
                      style: const TextStyle(color: Colors.yellow),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'go.dev/play and run some samples',
                      style: TextStyle(
                          // fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    trailing: const Icon(FontAwesomeIcons.googlePlay,
                        color: Colors.orangeAccent),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchPlayGolang();
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.account_balance,
                      FontAwesomeIcons.golang,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "search for some packages",
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.purple),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'pkg.go.dev',
                      style: TextStyle(
                          // fontStyle: FontStyle.italic,
                          color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.googleScholar,
                        color: Colors.redAccent),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchPkgGoDev();
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.account_balance,
                      FontAwesomeIcons.golang,
                      color: Colors.pink,
                    ),
                    title: const Text(
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      'current release notes',
                      style: TextStyle(color: Colors.green),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      // 'latest release notes from [date] release [num]',
                      'go is updated twice yearly with minor bug fixes about 1 month after a major release',
                      style: TextStyle(
                          // fontStyle: FontStyle.italic,
                          color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.googleScholar,
                        color: Colors.blue),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchGoRelease();
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.account_balance,
                      FontAwesomeIcons.golang,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "search for some packages",
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.purple),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'pkg.go.dev',
                      style: TextStyle(
                          // fontStyle: FontStyle.italic,
                          color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.googleScholar,
                        color: Colors.redAccent),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchPkgGoDev();
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.account_balance,
                      FontAwesomeIcons.golang,
                      color: Colors.orangeAccent,
                    ),
                    title: const Text(
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      'blog rolling notes',
                      style: TextStyle(color: Colors.yellow),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      // 'latest release notes from [date] release [num]',
                      'updated twice monthly',
                      style: TextStyle(
                          // fontStyle: FontStyle.italic,
                          color: Colors.pink),
                    ),
                    trailing:
                        const Icon(FontAwesomeIcons.google, color: Colors.blue),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchGoBlog();
                    }),
              ],
            ),
              ],
            ),

            //
            // expansion tile
            Text(
              '\nInstall Golang and GoEth Geth bare bones \n primaryTextTheme.headlineLarge\n',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headlineLarge,
              //   style: TextStyle(
              //       // color: Colors.blueAccent,
              //       fontSize: 40.0,
              //       fontStyle: FontStyle.italic),
            ),
            Text(
              '\nInstall Golang and GoEth Geth bare bones \n primaryTestTheme.headlineMedium\n',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headlineMedium,
              //   style: TextStyle(
              //       // color: Colors.blueAccent,
              //       fontSize: 40.0,
              //       fontStyle: FontStyle.italic),
            ),
            Text(
              '\nInstall Golang and GoEth Geth bare bones \n textTheme.headlineSmall\n',
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.headlineSmall,
              style: Theme.of(context).primaryTextTheme.headlineSmall,
              //   style: TextStyle(
              //       // color: Colors.blueAccent,
              //       fontSize: 40.0,
              //       fontStyle: FontStyle.italic),
            ),
            SelectableText(
              '\n2 selectable text google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.headlineSmall,
              // style: Theme.of(context).primaryTextTheme.headlineMedium,
              style: GoogleFonts.allura(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                // fontSize: 48,
                // fontWeight: FontWeight.w700,
                // fontStyle: FontStyle.italic,
              ),
            ),
            // override theme of context
            Text(
              '\n3 override theme &  google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
              textAlign: TextAlign.center,
              style: GoogleFonts.allura(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  backgroundColor: Colors.black),
            ),

            Column(
              children: [
                Text(
                  '\n4 column override theme & google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: GoogleFonts.allura(
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      backgroundColor: Colors.black),
                ),
              ],
            ),

            Container(
              // children: [
              padding: const EdgeInsets.all(20.0),
              color: Colors.black,
              child: Text(
                '\n5 override theme &  google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
                textAlign: TextAlign.left,
                softWrap: true,
                style: GoogleFonts.allura(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    backgroundColor: Colors.black),
              ),
              // ],
            ),
            const Text(
              textAlign: TextAlign.center,
              ethSyncPrimaryGoals,
              style: TextStyle(
                // color: Colors.green, backgroundColor: Colors.yellowAccent),
                color: Colors.lightGreen,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              ethSyncPrimaryGoals,
              style: GoogleFonts.lobster(
                // TextStyle(
                // color: Colors.green, backgroundColor: Colors.yellowAccent),
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              ethSyncPrimaryGoals,
              // style: Theme.of(context).primaryTextTheme.headlineSmall,
              // style: Theme.of(context).primaryTextTheme.headlineSmall,
              style: GoogleFonts.acme(
                // style: Theme.of(context).primaryTextTheme.headlineSmall,
                // TextStyle
                // color: Colors.green, backgroundColor: Colors.yellowAccent),
                textStyle: const TextStyle(
                    fontSize: 26,
                    // style:
                    // style: Theme.of(context).primaryTextTheme.headlineSmall,
                    color: Colors.lightBlueAccent),
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              goSyncGoogleAIParameters,
              style: TextStyle(
                  // color: Colors.blue, backgroundColor: Colors.yellowAccent),
                  ),
            ),
            const Text(
              textAlign: TextAlign.left,
              goSyncGoogleAIExample,
              style: TextStyle(
                  // color: Colors.blue, backgroundColor: Colors.yellowAccent),
                  ),
            ),
            const Text(
              // 'Install Golang and GoEth Geth bare bones',
              ethTextFonts,
              textAlign: TextAlign.center,
              style: TextStyle(
                // color: Colors.blueAccent,
                fontSize: 40.0,
                // fontStyle: FontStyle.italic
              ),
            ),
            Text(
              // '\n2 google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
              ethTextFonts,
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.headlineSmall,
              // style: Theme.of(context).primaryTextTheme.headlineMedium,
              style: GoogleFonts.notoSansEgyptianHieroglyphs(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                // fontSize: 48,
                // fontWeight: FontWeight.w700,
                // fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      )
    );
  }
}

const snackBarGoodbye = SnackBar(
  backgroundColor: Colors.green,
  content: Text('Thanks for visiting goSync. Goodbye!',
      textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0)),
  duration: Duration(seconds: 3),
);

final Uri _urlPlayGolangHelloCode =
    Uri.parse('https://play.golang.com/p/IBY3bOlTbu9');

Future<void> _launchPlayGolangHelloCode() async {
  debugPrint("customer left app to go hello example at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolangHelloCode)) {
    throw Exception('Could not launch $_urlPlayGolangHelloCode');
  }
}

final Uri _urlPlayGolang = Uri.parse('https://go.dev/play');

Future<void> _launchPlayGolang() async {
  debugPrint("customer left app to golang.org/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolang)) {
    throw Exception('Could not launch $_urlPlayGolang');
  }
}

final Uri _urlGoDev = Uri.parse('https://go.dev');

Future<void> _launchGoDev() async {
  debugPrint("customer left app to go.dev at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoDev)) {
    throw Exception('Could not launch $_urlGoDev');
  }
}

// gopher guides
final Uri _urlGopherGuides = Uri.parse('https://www.gopherguides.com');

Future<void> _launchGopherGuides() async {
  debugPrint("customer left app to gopher guides  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGopherGuides)) {
    throw Exception('Could not launch $_urlGopherGuides');
  }
}

// _launchAmazonGolang();
final Uri _urlAmazonGolang = Uri.parse('https://www.amazon.com/s?k=golang');

Future<void> _launchAmazonGolang() async {
  debugPrint("customer left app to gopher guides  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlAmazonGolang)) {
    throw Exception('Could not launch $_urlAmazonGolang');
  }
}

// launch youtube
final Uri _urlYoutube = Uri.parse('https://www.youtube.com/@golang');

Future<void> _launchYouTube() async {
  debugPrint("customer left app to you tube at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlYoutube)) {
    throw Exception('Could not launch $_urlYoutube');
  }
}

// launch twitter golang
final Uri _urlTwitterGo = Uri.parse('https://twitter.com/golang');

Future<void> _launchTwitterGolang() async {
  debugPrint("customer left app to twitter at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlTwitterGo)) {
    throw Exception('Could not launch $_urlTwitterGo');
  }
}

// launch mastodon golang
final Uri _urlMastodonGo = Uri.parse('https://mastodon.social/tags/golang');

Future<void> _launchMastodonGo() async {
  debugPrint("customer left app to twitter at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlMastodonGo)) {
    throw Exception('Could not launch $_urlMastodonGo');
  }
}

// _launchBlueSkyGo();
// launch mastodon golang
final Uri _urlBlueSkyGo = Uri.parse('https://bsky.app/profile/golang.org');

Future<void> _launchBlueSkyGo() async {
  debugPrint("customer left app to Blue Sky social  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlBlueSkyGo)) {
    throw Exception('Could not launch $_urlBlueSkyGo');
  }
}

// launch mastodon golang
final Uri _urlFacebookGo =
    Uri.parse('https://www.facebook.com/groups/golanggonuts');

Future<void> _launchFacebookGo() async {
  debugPrint("customer left app to Facebook social at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlFacebookGo)) {
    throw Exception('Could not launch $_urlFacebookGo');
  }
}

// launch github golang
final Uri _urlGithubGo = Uri.parse('https://github.com/golang/go/issues');

Future<void> _launchGithubGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubGo)) {
    throw Exception('Could not launch $_urlGithubGo');
  }
}

// slack messaging
final Uri _urlSlackGo = Uri.parse('https://invite.slack.golangbridge.org/');

Future<void> _launchSlackGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlSlackGo)) {
    throw Exception('Could not launch $_urlSlackGo');
  }
}

// stack overflow
final Uri _urlStackOverflow =
    Uri.parse('https://stackoverflow.com/questions/tagged/go?tab=Newest');

Future<void> _launchStackOverflow() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlStackOverflow)) {
    throw Exception('Could not launch $_urlStackOverflow');
  }
}

// gophercon
final Uri _urlGophercon = Uri.parse('https://www.gophercon.com/');

Future<void> _launchGophercon() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGophercon)) {
    throw Exception('Could not launch $_urlGophercon');
  }
}

// Discord
final Uri _urlDiscordGophers = Uri.parse('https://discord.gg/golang');

Future<void> _launchDiscordGophers() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDiscordGophers)) {
    throw Exception('Could not launch $_urlDiscordGophers');
  }
}

// Forum
final Uri _urlGoForum = Uri.parse('https://forum.golangbridge.org/');

Future<void> _launchGoForum() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoForum)) {
    throw Exception('Could not launch $_urlGoForum');
  }
}

// https://groups.google.com/g/golang-dev
final Uri _urlGroupGolangDev =
    Uri.parse('https://groups.google.com/g/golang-nuts');

Future<void> _launchGroupGolangDev() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGroupGolangDev)) {
    throw Exception('Could not launch $_urlGroupGolangDev');
  }
}

// IRC
final Uri _urlGoIRC = Uri.parse('ircs:irc.libera.chat/go-nuts');

Future<void> _launchGoIRC() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoIRC)) {
    throw Exception('Could not launch $_urlGoIRC');
  }
}

// https://go.dev/doc/devel/release
final Uri _urlGoRelease = Uri.parse('https://go.dev/doc/devel/release');

Future<void> _launchGoRelease() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoRelease)) {
    throw Exception('Could not launch $_urlGoRelease');
  }
}

// GDG google developers group
final Uri _urlGoGDG = Uri.parse('https://developers.google.com/community/gdg/');

Future<void> _launchGoGDG() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoGDG)) {
    throw Exception('Could not launch $_urlGoGDG');
  }
}

// _launchPkgGoDev
final Uri _urlPkgGoDev = Uri.parse('https://pkg.go.dev/');

Future<void> _launchPkgGoDev() async {
  debugPrint("customer left app to pkg.go.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPkgGoDev)) {
    throw Exception('Could not launch $_urlPkgGoDev');
  }
}

// _launchPkgGoDev
final Uri _urlRedditGolang = Uri.parse('https://reddit.com/r/golang/');

Future<void> _launchRedditGolang() async {
  debugPrint("customer left app to pkg.go.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlRedditGolang)) {
    throw Exception('Could not launch $_urlRedditGolang');
  }
}

final Uri _urlDevGolang = Uri.parse('https://dev.to/t/go');

Future<void> _launchDevGolang() async {
  debugPrint("customer left app to pkg.go.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDevGolang)) {
    throw Exception('Could not launch $_urlDevGolang');
  }
}

final Uri _urlWikpediaGo =
    Uri.parse('https://en.wikipedia.org/wiki/Go_(programming_language)');

Future<void> _launchWikpediaGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlWikpediaGo)) {
    throw Exception('Could not launch $_urlWikpediaGo');
  }
}

// https://medium.com/tag/golang
final Uri _urlMediumTagGo = Uri.parse('https://medium.com/tag/golang');

Future<void> _launchMediumTagGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlMediumTagGo)) {
    throw Exception('Could not launch $_urlMediumTagGo');
  }
}

// https://medium.com/tag/golang
final Uri _urlLinkedInGo =
    Uri.parse('https://www.linkedin.com/jobs/golang-developer-jobs');

Future<void> _launchLinkedInGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlLinkedInGo)) {
    throw Exception('Could not launch $_urlLinkedInGo');
  }
}

// _launchDigitalOceanGo
// https://medium.com/tag/golang
final Uri _urlDigitalOceanGo = Uri.parse('https://www.digitalocean.com/');

Future<void> _launchDigitalOceanGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDigitalOceanGo)) {
    throw Exception('Could not launch $_urlDigitalOceanGo');
  }
}

final Uri _urlFreelancer = Uri.parse('https://www.freelancer.com/');

Future<void> _launchFreelancer() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlFreelancer)) {
    throw Exception('Could not launch $_urlFreelancer');
  }
}

// https://www.upwork.com/hire/golang-developers/
final Uri _urlUpworkGolang =
    Uri.parse('https://www.upwork.com/hire/golang-developers/');

Future<void> _launchUpworkGolang() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlUpworkGolang)) {
    throw Exception('Could not launch $_urlUpworkGolang');
  }
}

// https://github.com/features/copilot/
final Uri _urlGithubCopilot = Uri.parse('https://github.com/features/copilot/');

Future<void> _launchGithubCopilot() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubCopilot)) {
    throw Exception('Could not launch $_urlGithubCopilot');
  }
}

// https://cloud.google.com/gemini/docs/codeassist/overview
final Uri _urlGeminiCodeAssist =
    Uri.parse('https://cloud.google.com/gemini/docs/codeassist/overview');

Future<void> _launchGeminiCodeAssist() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGeminiCodeAssist)) {
    throw Exception('Could not launch $_urlGeminiCodeAssist');
  }
}

final Uri _urlGoMeetup = Uri.parse('https://www.meetup.com/pro/go/');

Future<void> _launchGoMeetup() async {
  debugPrint("customer left app to meetup");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoMeetup)) {
    throw Exception('Could not launch $_urlGoMeetup');
  }
}

final Uri _urlGoBlog = Uri.parse('https://go.dev/blog/');

Future<void> _launchGoBlog() async {
  debugPrint("customer left app to goblog");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoBlog)) {
    throw Exception('Could not launch $_urlGoBlog');
  }
}

final Uri _urlGoCommands = Uri.parse('https://pkg.go.dev/cmd');

Future<void> _launchGoCommands() async {
  debugPrint("customer left app to go github");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoCommands)) {
    throw Exception('Could not launch $_urlGoCommands');
  }
}

final Uri _urlVisualStudioCode = Uri.parse('https://code.visualstudio.com/');

Future<void> _launchVisualStudioCode() async {
  debugPrint("customer left app to go visual studio code");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlVisualStudioCode)) {
    throw Exception('Could not launch $_urlVisualStudioCode');
  }
}

// _launchJetbrainsGoLand
final Uri _urlJetbrainsGoLand = Uri.parse('https://www.jetbrains.com/go/');

Future<void> _launchJetbrainsGoLand() async {
  debugPrint("customer left app to jetbrains ");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlJetbrainsGoLand)) {
    throw Exception('Could not launch $_urlJetbrainsGoLand');
  }
}

final Uri _urlVimGo = Uri.parse('https://github.com/fatih/vim-go');

Future<void> _launchVimGo() async {
  debugPrint("customer left app to vim go");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlVimGo)) {
    throw Exception('Could not launch $_urlVimGo');
  }
}

// https://github.com/visualfc/liteide
final Uri _urlLiteIDE = Uri.parse('https://github.com/visualfc/liteide');

Future<void> _launchLiteIDE() async {
  debugPrint("customer left app to Lite IDE");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlLiteIDE)) {
    throw Exception('Could not launch $_urlLiteIDE');
  }
}
