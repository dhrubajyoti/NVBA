import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';
import '../pages/homeHelper.dart';



class HomeTab extends StatefulWidget {
  static const title = 'Home';
  static const androidIcon = Icon(Icons.home);
  static const iosIcon = Icon(CupertinoIcons.home);
  static const sheight = 150.0;

  const HomeTab({Key key, this.androidDrawer}) : super(key: key);

  final Widget androidDrawer;

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  Future<void> _refreshData() {
    return Future.delayed(
      // This is just an arbitrary delay that simulates some network activity.
      const Duration(seconds: 2),
   //   () => setState(() => _setData()),
    );
  }

  void _togglePlatform() {
    TargetPlatform _getOppositePlatform() {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        return TargetPlatform.android;
      } else {
        return TargetPlatform.iOS;
      }
    }

    debugDefaultTargetPlatformOverride = _getOppositePlatform();
    // This rebuilds the application. This should obviously never be
    // done in a real app but it's done here since this app
    // unrealistically toggles the current platform for demonstration
    // purposes.
    WidgetsBinding.instance.reassembleApplication();
  }



    // ===========================================================================
  // Non-shared code below because:
  // - Android and iOS have different scaffolds
  // - There are differenc items in the app bar / nav bar
  // - Android has a hamburger drawer, iOS has bottom tabs
  // - The iOS nav bar is scrollable, Android is not
  // - Pull-to-refresh works differently, and Android has a button to trigger it too
  //
  // And these are all design time choices that doesn't have a single 'right'
  // answer.
  // ===========================================================================
  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HomeTab.title),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async => await _androidRefreshKey.currentState.show(),
          ),
          // IconButton(
          //   icon: Icon(Icons.shuffle),
          //   onPressed: _togglePlatform,
          // ), 
        ],
      ),
      drawer: widget.androidDrawer,
      body: RefreshIndicator(
        key: _androidRefreshKey,
        onRefresh: _refreshData,
       // child: SelectableText('data'),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 12),
          children: <Widget>[
            
              SaraswatiPuja(),
              
          ],
        ),
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics (),
      slivers: [
        SliverAppBar(
              pinned: true,
              elevation: 5,
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Image.asset(
                    'assets/images/logo.png',
                      fit: BoxFit.contain,
                      height: 64,
                  ),
                  // Container(
                  //     padding: const EdgeInsets.all(8.0), child: Text('YourAppTitle'))
                ],
              ), 
            ),
        // CupertinoSliverNavigationBar(
        //   trailing: CupertinoButton(
        //     padding: EdgeInsets.zero,
        //     // TODO(redbrogdon): Change this back to shuffle once the new icon
        //     // makes it into Flutter's stable channel.
        //     child: Icon(CupertinoIcons.shuffle_thick),
        //     onPressed: _togglePlatform,
        //   ),
        // ),

        CupertinoSliverRefreshControl(
          onRefresh: _refreshData,
        ),
        
        SliverSafeArea(
          top: false,
          sliver: SliverList(
          //  itemExtent: 275.0,
            delegate: SliverChildListDelegate([

             
         
            
              SaraswatiPuja(),
              
            ]),
          ),
          // sliver: SliverPadding(
          //   padding: EdgeInsets.symmetric(vertical: 12),
          //   sliver: SliverList(
          //     delegate: SliverChildBuilderDelegate(_listBuilder),
          //   ),
          // ),
        ),
      ],
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

