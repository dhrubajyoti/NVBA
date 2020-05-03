import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets.dart';
import 'event.dart';
import 'food.dart';
//import '../pages/homeHelper.dart';

class DurgaPujoDetailsPage extends StatefulWidget {
  static const title = 'Durga Pujo Details';
  static const androidIcon = Icon(Icons.person);
  static const iosIcon = Icon(CupertinoIcons.person);

 // const DurgaPujoDetailsPage({Key key, this.androidDrawer}) : super(key: key);

//  final Widget androidDrawer;

  @override
  _DurgaPujoDetailsPageState createState() => _DurgaPujoDetailsPageState();
}

class _DurgaPujoDetailsPageState extends State<DurgaPujoDetailsPage> {

 
  Widget _buildAndroid(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.3 ,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(DurgaPujoDetailsPage.title),
              background: Image.asset('assets/images/banner-1.png', fit: BoxFit.cover,),
              ),
              
            ),
          
        // CupertinoSliverNavigationBar(
          
        // ),
        CupertinoSliverRefreshControl(
          onRefresh: refreshData,
        ),
        SliverSafeArea(
          top: false,
          sliver: SliverList(
          //  itemExtent: 800.0,
            delegate: SliverChildListDelegate([
              durgaDetails(context),
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
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(DurgaPujoDetailsPage.title),
//       ),
//  //     drawer: widget.androidDrawer,
//       body: RefreshIndicator(
//   //      key: _androidRefreshKey,
//         onRefresh: refreshData,
//         child: durgaDetails(context),
//         // child: ListView.builder(
//         //   padding: EdgeInsets.symmetric(vertical: 12),
//         //   itemBuilder: _listBuilder,
//         // ),
//       ),
//     );
  }

  Widget _buildIos(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.3 ,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(DurgaPujoDetailsPage.title),
              background: Image.asset('assets/images/banner-1.png', fit: BoxFit.cover,),
              ),
              
            ),
          
        // CupertinoSliverNavigationBar(
          
        // ),
        CupertinoSliverRefreshControl(
          onRefresh: refreshData,
        ),
        SliverSafeArea(
          top: false,
          sliver: SliverList(
          //  itemExtent: 800.0,
            delegate: SliverChildListDelegate([
              durgaDetails(context),
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


Future<void> refreshData() {
  return Future.delayed(
    // This is just an arbitrary delay that simulates some network activity.
    const Duration(seconds: 2),
  //   () => setState(() => _setData()),
  );
}

Widget durgaDetails(context){
   return Column(
 // padding: const EdgeInsets.all(0),
    children: <Widget>[
      Container(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Text("শারদীয়ার অভিনন্দন",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'HindSiliguri',
          letterSpacing: 0.3,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      // Container(
      //   height: 10,
      // ),
      // Image.asset('assets/images/dp-1.png'),
      Container(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Text("শরৎ সকাল হিমের হাওয়া, আনমনে তাই হারিয়ে যাওয়া ।",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'HindSiliguri',
          letterSpacing: 0.3,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Text("কাশফুলে আর ঢাকের তালে , শিউলি নাচে ডালে ডালে।",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'HindSiliguri',
          letterSpacing: 0.3,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Text("মা এসেছে বছর ঘুরে , পুজোর হাওয়া জগৎ জুড়ে ।।",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'HindSiliguri',
          letterSpacing: 0.3,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Our most awaited festival is upon us. Once again, it is time to welcome Ma Durga to our lives with the devotional chant. Like past years, we are working hard to put together a gala event with devotion, pomp, glory, food, and fine dresses – most importantly, an opportunity to renew the vow of the community bond amongst all of us.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("So block your calendar and spend three days with your Northern Virginian friends and your family.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Durga Puja 2019 Schedule",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Image.network("http://dhrubajyoti.com/nvba/images/pujoDetails.png"),
      // InkWell(
      //   onTap: (){
      //       launchURLMap();
      //   },
      //   child: Image.asset('assets/images/timeTable.png', fit: BoxFit.fill,),
      // ),
      InkWell(
        onTap: (){
            launchURLMap();
        },
        child: Image.asset('assets/images/address.jpg', fit: BoxFit.fill,),
      ),
      // Padding(
      //   padding: EdgeInsets.all(15.0),
      //   child: Text("Event Time Table",style: TextStyle(
      //     color: Colors.black87,
      //     fontWeight: FontWeight.w600,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 20,
      //   ),
      //   textAlign: TextAlign.center,
      //   ),
      // ),
      // Padding(
      //   padding: EdgeInsets.all(5.0),
      //   child: Text("Friday, October 4, 6 PM to 10 PM",style: TextStyle(
      //     color: Colors.black87,
      //     fontWeight: FontWeight.w600,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 16,
      //   ),
      //   textAlign: TextAlign.center,
      //   ),
      // ),
      // Padding(
      //   padding: EdgeInsets.all(5.0),
      //   child: Text("Saturday, October 5, 10 AM to 10 PM",style: TextStyle(
      //     color: Colors.black87,
      //     fontWeight: FontWeight.w600,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 16,
      //   ),
      //   textAlign: TextAlign.center,
      //   ),
      // ),
      // Padding(
      //   padding: EdgeInsets.all(5.0),
      //   child: Text("Sunday, October 6, 10 AM to 10 PM",style: TextStyle(
      //     color: Colors.black87,
      //     fontWeight: FontWeight.w600,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 16,
      //   ),
      //   textAlign: TextAlign.center,
      //   ),
      // ),
      // Padding(
      //   padding: EdgeInsets.all(15.0),
      //   child: Text("Venue: Stone Bridge High School, 43100 Hay Rd, Ashburn, VA 20147",style: TextStyle(
      //     color: Colors.black54,
      //     fontWeight: FontWeight.w600,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 16,
      //   ),
      //   textAlign: TextAlign.center,
      //   ),
      // ),
      // ListTile(
      //         title: Text('Home'),
      //         onTap: () { 
      //           Navigator.push(ctxt,
      //               new MaterialPageRoute(builder: (ctxt) => new DrawerOnly()));
      //         },
      //       ),
      Image.asset('assets/images/gupiBhaga.jpeg'),

      // InkWell(
      //   onTap: (){
      //       launchURLMap();
      //   },
      //   child: Image.asset('assets/images/address.jpg', fit: BoxFit.fill,),
      // ),

      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("A sneak peak of our splendid artist line up this year",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      
      InkWell(
        onTap: (){
          Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new EventPage()));
        },
        
            child: Image.asset('assets/images/bannerXX.jpg'),
        
      ),

      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Music, Fine Arts, Drama Lover Bengali ",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
        ),
      ),

       Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("West Bengal's capital Kolkata—as the former capital of India—was the birthplace of modern Indian literary and artistic thought, and is referred to as the \"Cultural [or literary] Capital of India\". The presence of paras, which are cluster of neighbourhoods that possess a strong sense of community, is characteristic of West Bengal. Typically, each para has its own community club and, on occasion, a playing field. Residents engage in addas, or leisurely chats, that often take the form of freestyle intellectual conversation. However, with the growth of apartments, expansion of neighbourhoods and rapid urbanization, this culture is on decline. Adda is very common among elder residents. West Bengal has a long tradition of popular literature, music and drama largely based on Bengali folklore and Hindu epics and Puranas.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
        ),
      ),

      Container(
        height: 30,
      ),  
      
      InkWell(
        onTap: (){
          Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new FoodPage()));
        },
        
            child: Image.asset('assets/images/food1.jpg'),
         
      ),

      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Food Lover Bengali ",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("As Bengalis are best known for their love for food, most of us celebrate these special days by enjoying a scrumptious meal in a favorite restaurant.We at NVBA know that and value it.NVBA’s Durga Puja is a paradise for food lovers.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
        ),
      ),

      
      
      // Center(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       buildStack('Manomoy','Monomoy Bhattacharya'),
      //        buildStack('Srijato', 'Srijato Bandopadhyay'),
      //        buildStack('imon', 'Iman Chakraborty'),
      //       buildStack('kinjal','Kinjal Chatterjee'),
      //     ],
      //   ),
      // ),

     Container(
        height: 30,
      ),
      // Image.asset('assets/images/FoodMenu.jpg'),
      // Container(
      //   height: 20,
      // ),
            
      // Padding(
      //   padding: EdgeInsets.all(15.0),
      //   child: Text("As Bengalis are best known for their love for food, most of us celebrate these special days by enjoying a scrumptious meal in a favorite restaurant.We at NVBA know that and value it.NVBA’s Durga Puja is a paradise for food lovers.",style: TextStyle(
      //     color: Colors.black87,
      //     fontWeight: FontWeight.w400,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 16,
      //   ),
      //   textAlign: TextAlign.center,
      //   ),
      // ), 

      // Container(
      //   height: 150,
      // ),
      
    ],
);
  

}




Widget buildStack(a,b) => Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/$a.jpg'),
        radius: 160,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        child: Text(
          '$b',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );


  launchURLMap() async {
  const url = 'https://www.google.com/maps/place/1504+Summerset+Pl,+Herndon,+VA+20170/@38.97423,-77.4110003,17z/data=!3m1!4b1!4m5!3m4!1s0x89b63871394fb25d:0xe6e979a73666c879!8m2!3d38.97423!4d-77.4088063?hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}