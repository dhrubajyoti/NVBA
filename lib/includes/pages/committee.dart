import 'package:flutter/material.dart';
//import '../../includes/drawer.dart';
// import 'package:flutter_selectable_text/flutter_selectable_text.dart';

class CommitteePage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Executive Committee"),),
       backgroundColor: Colors.grey[100],
      body: committeePageBody(),
   //    drawer: new DrawerOnly(),
    );
  }
}

Widget committeePageBody(){

  return ListView(
  padding: const EdgeInsets.all(10),
    children: <Widget>[

        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text("NVBA 2020-2021 Executive Committee",style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
            fontFamily: 'OpenSans',
            letterSpacing: 0.4,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
          ),
        ),

        cardBuilder('assets/images/ecm/RuchirGhosh.jpg','President','Ruchir Ghosh','(703) 926-7048','ruchirghosh@gmail.com'),


       cardBuilder('assets/images/Sundar.jpg','General Secretary','Sundar Majumdar','(646) 338-4846','sndrmmjmdr@yahoo.com'),

      cardBuilder('assets/images/ecm/arijit.jpg','Treasurer','Arijit Auddy','(607) 768-7705','arijitauddy123@gmail.com'),

       cardBuilder('assets/images/ecm/DebikaDas.jpg','Cultural Secretary','Debika Das','(412) 498-9969','debika_d@hotmail.com'),

       cardBuilder('assets/images/ecm/MridulGop.jpeg','Food Secretary / Branding & Promotion','Mridul Gop','(303) 243-4569','mridulgop@gmail.com'),

       cardBuilder('assets/images/ecm/KingshukChatterjee.jpeg','Facility / Logistics','Kingshuk Chatterjee','(404) 904-9830','kingshukchatterjee@gmail.com'),

       cardBuilder('assets/images/ecm/deb.jpeg','Facility / Logistics','Debjyoti Bhattacharya','(860) 965-8436','debjyoti.b@gmail.com'),


      
      cardBuilder('assets/images/ecm/saurav.jpg','Outreach, Event Planning, Communications & Magazine Publication','Saurav Bhattacharyya','(571) 612-9281','bsaurav@gmail.com'),

      cardBuilder('assets/images/ecm/SumonaDas.jpeg','Communications & Magazine Publication','Sumona Das','(703) 674-9719','sumona29@gmail.com'),

      
       cardBuilder('assets/images/swapan.jpg','Puja & Festivals','Swapan Acharyya','(925) 984-6828','acharyya02@yahoo.com'),


       cardBuilder('assets/images/ecm/dj.jpg','Web & App Management','Dhruba Jyoti Dey','(512) 412-9841','dhrubajyotidey@outlook.com'),




      
      
      Container(
        height: 40,
      ),
      
      
      
      Container(
        height: 40,
      ),
      
    ],
);
  


}


Widget cardBuilder(a,b,c,d,e) => Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10.0),
        //   ),
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
            // Container(
            //   height: 10,
            // ),
          //  Image.asset('$a', height: 400.0,),
            CircleAvatar(
              backgroundImage: AssetImage('$a'), 
              radius: 200.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text('$c',style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'OpenSans',
                    letterSpacing: 0.3,
                    fontSize: 20,
                  ), textAlign: TextAlign.left,
                ),
              ),  
              Container(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child:Text('$b',style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'OpenSans',
                    letterSpacing: 0.3,
                    fontSize: 16,
                  ), textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 10,
              ),
            //  ListTile(
             
            //           // Image.asset('$a'),
            //   title: SelectableText('$c'),
            //   subtitle: SelectableText('$b'),
            // ),
             
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ListTile(
              leading: Icon(Icons.mobile_screen_share),
              title: SelectableText("$d",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 14,
                ),
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ListTile(
              leading: Icon(Icons.email),
              title: SelectableText("$e",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 14,
                ),
              ),
              ),
            ),
          ],
        ),
      );