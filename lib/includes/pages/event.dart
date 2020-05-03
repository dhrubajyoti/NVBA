import 'package:flutter/material.dart';
//import '../../includes/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class EventPage extends StatelessWidget {
  EventPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Musical Events"),),
      body: eventPageBody(),
//       drawer: new DrawerOnly(),
    );
  }
}

Widget eventPageBody(){

  return ListView(
  padding: const EdgeInsets.all(0),
    children: <Widget>[
      Hero(
        tag: 'EventHero',
        child: Image.asset('assets/images/bannerX.jpg', fit: BoxFit.fill,),
      ),
      InkWell(
        onTap: (){
            launchURLMap();
        },
        child: Image.asset('assets/images/address.jpg', fit: BoxFit.fill,),
      ),
      
      Container(
        height: 20,
      ),
      Text("Our Musical Events Line Up ",style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w600,
        fontFamily: 'OpenSans',
        letterSpacing: 0.3,
        fontSize: 25,
      ), textAlign: TextAlign.center,
      ),
      Container(
        height: 20,
      ),
      
      buildStack('Srijato', 'Srijato Bandopadhyay'),
      Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 35),
        child: Text("Srijato Bandopadhyay is an Indian poet of the Bengali language.[1] He won the Ananda Puroskar in 2004 for his book Udanta Sawb Joker: All Those Flying Jokers. In 2014, he won the Filmfare Awards East for Best Lyricist for the song 'Balir Shohor' from 'Mishawr Rawhoshyo'.",style: TextStyle(
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
        height: 20,
      ),
      
      
      buildStack('imon', 'Iman Chakraborty'),
      Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 35),
        child: SelectableText("Iman Chakraborty is an Indian singer. Chakraborty won the National Film Award for Best Female Playback Singer in the year 2017 for her Bengali song “Tumi Jaake Bhalobasho” from Praktan film which is India's most prestigious award for the singers who lend their vocals for films soundtrack. Accordingly She is one of the few singers who have won a national award for the debut film song in India.",style: TextStyle(
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
        height: 20,
      ),

      buildStack('Manomoy','Monomoy Bhattacharya'),
      Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 35),
        child: SelectableText("Manomay Bhattacharya is the fifth generation of JADUBHATTA having a sweet voice and he is no flash-in-the-pan. He has had solid training in music at the age of 4 under the vigilant guidance of father Sri Dhrubadas Bhattacharya, a disciple of Subinoy Roy, and mother Ila Bhattacharya, a disciple of Ratneswar Mukherjee. Manomay places himself under the tutelage of Benukumar Dobey, Bibhuti Bose and Jayanta Bose, who trained him a finer nuance of the Classical music.",style: TextStyle(
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
        height: 20,
      ),

      buildStack('kinjal','Kinjal Chatterjee'),
      Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 35),
        child: SelectableText("A well-known and widely reckoned personality to the music lovers amongst the Bengali mass of Kolkata, Bengal, Bangladesh and many other part of the Universe. A pretty young guy started excelling his identity in number of college fest in Kolkata. A Law Graduate of Calcutta University pursuing his present academic career in Indian Vocal Music from Rabindra Bharati University, Calcutta.",style: TextStyle(
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
        height: 20,
      ),
    
    


      Container(
        height: 80,
      ),
      
    ],
);
  


}


launchURLMap() async {
  const url = 'https://www.google.com/maps/place/1504+Summerset+Pl,+Herndon,+VA+20170/@38.97423,-77.4110003,17z/data=!3m1!4b1!4m5!3m4!1s0x89b63871394fb25d:0xe6e979a73666c879!8m2!3d38.97423!4d-77.4088063?hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



Widget buildStack(a,b) => Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [

      ClipRRect(
        borderRadius: new BorderRadius.circular(10.0),
        child: Image.asset('assets/images/$a.jpg',
            height: 250.0,
            
        ),
      ),
      // CircleAvatar(
      //   backgroundImage: AssetImage('assets/images/$a.jpg'),
      //   radius: 120,
      // ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black54,
        ),
        child: Text(
          '$b',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );