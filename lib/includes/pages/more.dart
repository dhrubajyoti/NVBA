import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:url_launcher/url_launcher.dart'; 

import '../widgets.dart';
import 'ourannualevents.dart';
import 'aboutus.dart';
import 'history.dart';
import 'contactus.dart';
import 'committee.dart';

class SettingsTab extends StatefulWidget {
  static const title = 'More';
  static const androidIcon = Icon(Icons.more_vert);
  static const iosIcon = Icon(CupertinoIcons.add_circled_solid);

  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {


  Widget _buildList() {
    return ListView(
      children: [
        Padding(padding: EdgeInsets.only(top: 24)),
        
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
            title: Text('Admin Checkin Process'),
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

      ],
    );
  }

  // ===========================================================================
  // Non-shared code below because this tab uses different scaffolds.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SettingsTab.title),
      ),
      body: _buildList(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: _buildList(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
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