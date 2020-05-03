import 'package:flutter/material.dart';
//import '../../includes/drawer.dart';

class OurAnnualEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Our Annual Events"),),
      body: ourAnnualEventsBody(),
    //   drawer: new DrawerOnly(),
    );
  }
}



Widget ourAnnualEventsBody(){

  return ListView(
  padding: const EdgeInsets.all(0),
    children: <Widget>[
      Image.asset('assets/images/durgapujo-2.jpg'),
      Container(
        height: 5,
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("At NVBA we celebrate Durga Puja every year which is an important socio-cultural annual religious festival from ancient times by worshipping goddess Durga and celebrating her victory over the mythological demon named Mahishasura.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Container(
        height: 35,
      ),
      Image.asset('assets/images/swarasati-1.jpg'),
      Container(
        height: 5,
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("We at NVBA celebrate the Saraswati puja in the month of phalgun (January to February), the Goddess of knowledge, music and art.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Container(
        height: 35,
      ),
      Image.asset('assets/images/Picnic2019-1.jpg'),
      Container(
        height: 5,
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Among the delights of Summer is the NVBA picnic to the woods.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Container(
        height: 35,
      ),
      Image.asset('assets/images/rabiThakur.jpg'),
      Container(
        height: 5,
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("We plan to gather in the month of May every year, to pay homage to Gurudev Rabindranath and Rebel Poet Kazi Nazrul. We celebrate the occasion with songs, poems and story-telling to remember the legends of Bengali literature and society.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Container(
        height: 80,
      ),
      
    ],
);
  


}