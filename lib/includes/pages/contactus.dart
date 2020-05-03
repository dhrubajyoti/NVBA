import 'package:flutter/material.dart';
// import '../../includes/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_selectable_text/flutter_selectable_text.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Contact Us"),),
      body: contactUsPageBody(),
//       drawer: new DrawerOnly(),
    );
  }
}

Widget contactUsPageBody(){

  return ListView(
  padding: const EdgeInsets.all(0),
    children: <Widget>[

            Container(
              height: 20,
            ),
            Text("Email Us ",style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontFamily: 'OpenSans',
              letterSpacing: 0.3,
              fontSize: 20,
            ), textAlign: TextAlign.center, ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
              leading: Icon(Icons.email),
            //  onTap: ,
              title: SelectableText("nvbacommittee@yahoo.com",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 18,
                ),
              ),
              ),
            ),
            Container(
              height: 20,
            ),


            Container(
              height: 20,
            ),
            Text("Call Now",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 20,
                ), textAlign: TextAlign.center, ),
            Padding(
              padding: EdgeInsets.fromLTRB(50.0, 5, 30, 0),
              child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("+1 (703) 926-7048",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 18,
                ),
              ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(50.0, 5, 30, 0),
              child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("+1 (646) 338-4846",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 18,
                ),
              ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(50.0, 5, 30, 5),
              child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("+1 (512) 412-9841",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 18,
                ),
              ),
              ),
            ),

           
           


        Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            

          ],
        ),
      ),
    



        Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    


        Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 20,
            ),
            Text("Visit Us",style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontFamily: 'OpenSans',
              letterSpacing: 0.3,
              fontSize: 20,
            ), textAlign: TextAlign.center, ),
            Text("Please Tap Me Get Map",style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w400,
              fontFamily: 'OpenSans',
              letterSpacing: 0.3,
              fontSize: 14,
            ), textAlign: TextAlign.center, ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: ListTile(
                onTap: (){
                      launchURL();
                },
              leading: Icon(Icons.location_on),
              title: SelectableText("Northern VA Bengali Association",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 18,
                ),
              ),
                subtitle: Text("1504 Summerset PlaceHerndon, VA 20170",
                  
                ),
              ),
            ),

          ],
        ),
      ),
    




      Container(
        height: 40,
      ),
      
    ],
);
  


}

launchURL() async {
  const url = 'https://www.google.com/maps/place/1504+Summerset+Pl,+Herndon,+VA+20170/@38.97423,-77.4110003,17z/data=!3m1!4b1!4m5!3m4!1s0x89b63871394fb25d:0xe6e979a73666c879!8m2!3d38.97423!4d-77.4088063?hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}