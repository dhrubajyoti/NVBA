import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


 import './includes/pages/home.dart';
 import './includes/pages/durgaPujoDetails.dart';
 import './includes/pages/more.dart';
 import './includes/pages/ourannualevents.dart';
import './includes/pages/aboutus.dart';
import './includes/pages/history.dart';
import './includes/pages/contactus.dart';
import './includes/pages/committee.dart';
// import 'news_tab.dart';
// import 'profile_tab.dart';
import 'package:url_launcher/url_launcher.dart'; 

import './includes/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    // Change this value to better see animations.
    timeDilation = 1;
    // Either Material or Cupertino widgets work in either Material or Cupertino
    // Apps.
    return MaterialApp(
      title: 'Northern Virginia Bengali Association',
      theme: ThemeData(
        // Use the green theme for Material widgets.
      //  primarySwatch: Colors.teal,
      primaryColor: Color.fromRGBO(240, 240, 240, 1),
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return CupertinoTheme(
          // Instead of letting Cupertino widgets auto-adapt to the Material
          // theme (which is green), this app will use a different theme
          // for Cupertino (which is blue by default).
          data: CupertinoThemeData(),
          child: Material(child: child),
        );
      },
      home: PlatformAdaptingHomePage(),
    );
  }
}

// Shows a different type of scaffold depending on the platform.
//
// This file has the most amount of non-sharable code since it behaves the most
// differently between the platforms.
//
// These differences are also subjective and have more than one 'right' answer
// depending on the app and content.
class PlatformAdaptingHomePage extends StatefulWidget {
  @override
  _PlatformAdaptingHomePageState createState() =>
      _PlatformAdaptingHomePageState();
}

class _PlatformAdaptingHomePageState extends State<PlatformAdaptingHomePage> {
  // This app keeps a global key for the songs tab because it owns a bunch of
  // data. Since changing platform reparents those tabs into different
  // scaffolds, keeping a global key to it lets this app keep that tab's data as
  // the platform toggles.
  //
  // This isn't needed for apps that doesn't toggle platforms while running.
  final homeTabKey = GlobalKey();

  // In Material, this app uses the hamburger menu paradigm and flatly lists
  // all 4 possible tabs. This drawer is injected into the songs tab which is
  // actually building the scaffold around the drawer.
  Widget _buildAndroidHomePage(BuildContext context) {
    return HomeTab(
      key: homeTabKey,
      androidDrawer: _AndroidDrawer(),
    );
  }

  // On iOS, the app uses a bottom tab paradigm. Here, each tab view sits inside
  // a tab in the tab scaffold. The tab scaffold also positions the tab bar
  // in a row at the bottom.
  //
  // An important thing to note is that while a Material Drawer can display a
  // large number of items, a tab bar cannot. To illustrate one way of adjusting
  // for this, the app folds its fourth tab (the settings page) into the
  // third tab. This is a common pattern on iOS.
  Widget _buildIosHomePage(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              title: Text(HomeTab.title), icon: HomeTab.iosIcon),
          // BottomNavigationBarItem(
          //     title: Text('Durga Pujo'), icon: Image.asset('assets/images/dpIcon.png')),
          BottomNavigationBarItem(
              title: Text(SettingsTab.title), icon: SettingsTab.iosIcon),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              defaultTitle: HomeTab.title,
              builder: (context) => HomeTab(key: homeTabKey),
            );
          // case 1:
          //   return CupertinoTabView(
          //     defaultTitle: DurgaPujoDetailsPage.title,
          //     builder: (context) => DurgaPujoDetailsPage(),
          //   );
          case 1:
            return CupertinoTabView(
              defaultTitle: SettingsTab.title,
              builder: (context) => SettingsTab(),
            );
          default:
            assert(false, 'Unexpected tab');
            return null;
        }
      },
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroidHomePage,
      iosBuilder: _buildIosHomePage,
    );
  }
}

class _AndroidDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
      padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
              decoration: BoxDecoration(
                color: Colors.white12,
              ),
          ),
          ListTile(
            leading: HomeTab.androidIcon,
            title: Text(HomeTab.title),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: Icon(Icons.chevron_right),  
          ),
          // ListTile(
          //   leading: Image.asset('assets/images/dpIcon.png'),
          //   title: Text('Durga Pujo Details'),
          //   onTap: () {
          //       Navigator.push(context,
          //           new MaterialPageRoute(builder: (context) => new DurgaPujoDetailsPage()));
          //     },
          //     trailing: Icon(Icons.arrow_forward_ios),  
          // ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),

          ListTile(
            leading: Icon(Icons.people),
            title: Text('About Us'),
            onTap: () { 
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new AboutUsPage()));
            },
            trailing: Icon(Icons.chevron_right),  
        ),
        Divider(
            height: 5.0,
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: Text('Histroy of NVBA'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new HistoryPage()));
          },
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(
            height: 5.0,
        ),
        ListTile(
            leading: Icon(Icons.event_available),
            title: Text('Our Annual Events'),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new OurAnnualEventsPage()));
              },
            trailing: Icon(Icons.chevron_right),  
        ),
        Divider(
                height: 5.0,
        ),
        
        // ListTile(
        //   leading: Icon(Icons.card_membership),
        //   title: Text('Membership'),
        //   onTap: () {
        //     launchURL();
        //   },
        //   trailing: Icon(Icons.arrow_forward_ios), 
        // ),
        // Divider(
        //         height: 5.0,
        // ),
        // ListTile(
        //     leading: Icon(Icons.event_seat),
        //     title: Text('Tickets Booking - Durga Pujo'),
        //       onTap: () {
        //          launchURLReg();
        //       },
        //     trailing: Icon(Icons.arrow_forward_ios),  
        // ),
        // Divider(
        //         height: 5.0,
        // ),
        ListTile(
          leading: Icon(Icons.assignment_ind),
          title: Text('Executive Committee'),
          onTap: () {
            
            Navigator.push(context,
                new MaterialPageRoute(builder: (ctxt) => new CommitteePage()));
          },
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(
            height: 2.0,
        ),
        ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Admin Members Only'),
            onTap: () { 
              launchURLCheckIn();
            },
            trailing: Icon(Icons.chevron_right),
          ),
        
        Divider(
            height: 5.0,
        ),
        ListTile(
          leading: Icon(Icons.contact_phone),
          title: Text('Contact Us'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new ContactUsPage()));
          },
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(
            height: 5.0,
        ),
          // ListTile(
          //   leading: SettingsTab.androidIcon,
          //   title: Text(SettingsTab.title),
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push<void>(context,
          //         MaterialPageRoute(builder: (context) => SettingsTab()));
          //   },
          // ),
        ],
      ),
    );
  }
}



launchURL() async {
  const url = 'http://novaba.org/membership-account/membership-levels/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLTickets() async {
  const url = 'http://http://novaba.org/durga-puja-tickets/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLCheckIn() async {
  const url = 'http://dhrubajyoti.com/nvba/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLReg() async {
  const url = 'http://novaba.org/login-page/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}