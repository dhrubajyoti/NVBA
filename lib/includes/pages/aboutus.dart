import 'package:flutter/material.dart';
//import '../../includes/drawer.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("About Us"),),
      body: aboutPageBody(),
//       drawer: new DrawerOnly(),
    );
  }
}

Widget aboutPageBody(){

  return ListView(
  padding: const EdgeInsets.all(0),
    children: <Widget>[
      Hero(
        tag: 'AboutUsHero',
        child: Image.asset('assets/images/durgapujo-1.jpg'),
      ),
      
      Container(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("We strive to keep our traditions alive at NVBA. ADDA, CHA and Promotion of healthy culture forms the core of it. Be a nvba’n now.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Established in 1989 NVBA’ s mission is to engage Bengali community by organizing community events thereby promoting Bengali culture and support the community through our services. It’s vision is to nurture and promote Bengali and Indian culture, language, and religion for the Northern Virginia community through educational, religious, and charitable activities.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("For over two decades, the Northern Virginia Bengali Association (NVBA) has kept Bengalis in the Greater Washington DC area connected to their beloved Kolkata. NVBA operates as a charitable, non-profit organization. Its mission is to bring the spirit and ethos of Bengal to area expatriates. To this end, Poila Boishakh is celebrated each year with vigor and solemnity. NVBA sponsors bhog at the Washington Kali Temple in Burtonsville, MD on that day. Area residents contribute khichuri, labra, chatni, payesh, among other bhog items. NVBA volunteers spend many hours organizing and coordinating the event. They also distribute bhog to temple visitors on that day. The vibrance and joie de vivre of the occasion sets the tone for the rest of the year – Saraswati Puja, Durga Puja and the annual summer picnic. NVBA often invites artistes from India to augment the enjoyment of the audiences. Each occasion is a bright, joyful celebration of the Bengali spirit. Each occasion strengthens the connectedness with the homeland.",style: TextStyle(
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