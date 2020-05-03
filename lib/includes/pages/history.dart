import 'package:flutter/material.dart';
//import '../../includes/drawer.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("History of NVBA"),),
      body: historyPageBody(),
 //      drawer: new DrawerOnly(),
    );
  }
}

Widget historyPageBody(){

  return ListView(
  padding: const EdgeInsets.all(0),
    children: <Widget>[
      Image.asset('assets/images/history.jpg'),
      Container(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("History of Origin of Northern Virginia Bengali Association NVBA",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.4,
          fontSize: 22,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Bengalis settled in the Northern Virginia area in the early Seventies. The Sixties had seen a small Bengali population make its home in DC and Maryland. The first ever Saraswati Puja was organized in 1967 and Durga Puja was celebrated by the community in 1973. The Bengalis of the area owe a debt of gratitude to Mrs. Mili Ghosh who brought the community together for a picnic as early as 1965. Her husband, Mr. Dhiren Ghosh, was one of the founders of Sanskriti in Maryland. That organization successfully continues to bring Bengalis together for community activities even today.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("The Ghoshes moved in the Northern Virginia area in the late Eighties. They immediately felt a need for a community organization. Along with Subroto Samaddar, Tarak Bhar, Barin Chakraborty, Suranjan Dutta, Jitendra Laskar, Dev Kumar Kar, Tapan Majumdar, they established the Northern Virginia Bengali Association (NVBA). In late 1991, a constitution was approved and elections were held in 1992. Mr. Asim Mandal was elected the President, Mr. Samir Nandi, the Secretary, and Mr. Subroto Mitro, the Treasurer.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("NVBA has flourished in the Nineties and the early 2000s. The influx of highly educated IT professionals into the Northern Virginia area during the dot.com era has boosted NVBA’s membership.Today, NVBA has a robust membership. The leadership of the organization has been dynamic and entrepreneurial. NVBA has prospered financially, allowing the leadership to provide the community with pujas, celebrations, entertainments and picnics. The community has enjoyed performances by local artistes and those from back home.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Container(
        height: 90,
      ),
      
    ],
);
  


}