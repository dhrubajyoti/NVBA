import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'food.dart';
import 'event.dart';
import 'mahalaya.dart';
import 'sponsor.dart';
// import '../main.dart';
// import '../includes/pages/home.dart';
// import '../includes/pages/aboutus.dart';
// import '../includes/pages/ourannualevents.dart';
// import '../includes/pages/history.dart';
// import '../includes/pages/committee.dart';
// import '../includes/pages/durgaPujoDetails.dart';



// import 'package:url_launcher/url_launcher.dart';

class Mahalaya extends StatefulWidget {
  Mahalaya({Key key}) : super(key: key);

  _MahalayaState createState() => _MahalayaState();
}

class _MahalayaState extends State<Mahalaya> {
  @override
  Widget build (BuildContext context) {
    return Hero(
      tag: 'AboutUsHero',
      key: UniqueKey(),
      child: GestureDetector(
                
                onTap: (){
                  Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new MahalayaPage(key:UniqueKey())));
                },
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
              //    clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  elevation: 5,
                  child: Image.asset('assets/images/Mahalaya-11.jpg', fit: BoxFit.fill,),

                ),
          ),
    );

  }        
}  


class EventsPuja extends StatefulWidget {
  EventsPuja({Key key}) : super(key: key);

  _EventsPujaState createState() => _EventsPujaState();
}

class _EventsPujaState extends State<EventsPuja> {
  @override
  Widget build (BuildContext context) {
    return Hero(
      tag: 'EventHero',
      key: UniqueKey(),
      child: GestureDetector(
                
                onTap: (){
                  Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new EventPage(key: UniqueKey())));
                },
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
              //    clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  elevation: 5,
                  child: Image.network('http://dhrubajyoti.com/nvba/images/bannerX1.jpg', fit: BoxFit.fill,),

                ),
          )
      );

  } 
}  

class Food extends StatefulWidget {
  Food({Key key}) : super(key: key);

  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {

  @override
  Widget build (BuildContext context) {
    return Hero(
      tag: 'FoodHero',
      key: UniqueKey(),
      child: GestureDetector(
                
                onTap: (){
                  Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new FoodPage(key:UniqueKey())));
                },
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
              //    clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  elevation: 5,
                  child: Image.asset('assets/images/food11.jpg', fit: BoxFit.fill,),

                ),
          )
    );

  } 
}

class ExtraCard extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return Hero(
      tag: 'ExtraHero',
      child: GestureDetector(
                
                onTap: (){
                  launchURLMap();
                },
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
              //    clipBehavior: Clip.antiAlias,
              //    margin: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  elevation: 1,
                  child: Image.asset('assets/images/bannerXXX.png', fit: BoxFit.fill,),

                ),
          )
      );

  } 
}


class Sponsor extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return Hero(
      tag: 'SponsorHero',
      child: GestureDetector(
                
                onTap: (){
                  Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new SponsorPage()));
                },
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
              //    clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  elevation: 5,
                  child: Image.asset('assets/images/sponsor.png', fit: BoxFit.fill,),

                ),
          )
    );

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


  launchURLMap() async {
  const url = 'https://goo.gl/maps/pUknXG23WsRywbpP6';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


// class SaraswatiPuja extends StatefulWidget {
//   SaraswatiPuja({Key key}) : super(key: key);

//   @override
//   _SaraswatiPujaState createState() => _SaraswatiPujaState();
// }



class SaraswatiPuja extends StatefulWidget {
  SaraswatiPuja({Key key}) : super(key: key);

  _SaraswatiPujaState createState() => _SaraswatiPujaState();
}

class _SaraswatiPujaState extends State<SaraswatiPuja> {
  @override
  Widget build (BuildContext context) {
    return Container(
         padding: const EdgeInsets.all(0),
         child: Column(
            children: <Widget>[
              Container(
                height: 20,
              ),
              Text("Saraswati Pujo",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 26,
                ), textAlign: TextAlign.left,
              ),
              Container(
                height: 10,
              ),
              Image.asset('assets/images/saraswati.jpg'),
              Container(
                height: 20,
              ),
              Text("Saturday, Feb 1st 2020",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 20,
                ), textAlign: TextAlign.center,
              ),
              Container(
                height: 10,
              ),
              Text("9AM to 10 PM",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 20,
                ), textAlign: TextAlign.center,
              ),
              Container(
                height: 10,
              ),
              Text("Mercer Middle School",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 20,
                ), textAlign: TextAlign.center,
              ),
              Container(
                height: 20,
              ),
              ExtraCard(),
              Container(
                height: 30,
              ),
              Text("Gate Price",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 20,
                ), textAlign: TextAlign.center,
              ),
              Container(
                height: 20,
              ),
              Text('''
          Adult (\$ 50.00), 
Children between 11-18 years (\$ 30.00), 
          Below 10 Free, 
 Students (with Student ID) (\$ 35.00), 
      Visiting Parents (\$ 35.00).
              ''',style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.1,
                  fontSize: 18,
                ), textAlign: TextAlign.center,
              ),

              Container(
                height: 30,
              ),
              Text("Puja Schedule",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 24,
                ), textAlign: TextAlign.center,
              ),
              Container(
                height: 20,
              ),

              
              Text('''
Puja Preparation – 9:00 AM to 10:30 AM

Puja Starts – 10:30 AM

Haate Khari – 12 – 12:30 PM

Visual arts competition – 12 -12:30 PM

Pushpanjali – 12:30 PM – 1:00 PM

Kids lunch – 1:00 PM

Adults lunch – 1:30 PM

Bangla Poem Recitation – 2pm to 3pm

Cultural Program – 3:00PM – 6:00 PM

Bisarjan Puja – 3:00PM -3:30 PM

Bisarjan Ritual – 6:00PM – 6:30PM

Dinner – 6:30 PM – 8:00 PM

Prize distribution & Concert – 8:00 PM – 9:30 PM
              ''',style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.0,
                  fontSize: 18,
                ), textAlign: TextAlign.center,
              ),

              Container(
                height: 30,
              ),
              Text("Cultural Program Schedule ",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 24,
                ), textAlign: TextAlign.center,
              ),
              Container(
                height: 20,
              ),

              
              Text('''
 Saraswati Vandana (medley of bengali and hindi saraswati vandana songs) \n by \n	Aadhya, Aksaj, Harsh, Riansh, Shritha, Harika, Krisha, ushnish , kaustav , Monami. \n at	3:00PM.

Bengali Songs-Aamra Sobai Raja (Rabindra Sangeet) and Chol Chol Chol (Nazrul Giti) \n by \n	Diya Ray \n	at 3:10PM

Kareokee song in “Amar Sopno je sotti holo aaj” from movie – Anushondhaan \n by \n	Arpita Gogoi \n	at 3:17PM

Rabindra Sangeet on Piano – Purano sei diner kotha \n by \n	Ahan Banerjee   \n	at 3:24PM

Dialogues and Poems – Lanka Debi O Hanuma \n by \n	Anusha Dasgupta, Anuj Dasgupta \n at	3:32PM

Rabindra Sangeet – Ami chini go chini tomare \n by \n	Ishaan Aich \n at	3:39PM

Radha-Krishna medely  \n by \n	Zaara, Hia, and Tiya \n at	3:46PM

Rabindra Sangeet “Tomar Khola Haaoaa” \n by \n	Sampurna Chakravorty \n at	3:53PM

Lakdi ki kaathi – kids’ song from movie Masoom \n by \n 	Ajay Dasbiswas, Anish Dasbiswas \n at	4:00PM

Skit – Shediner Manusher Shangram  \n by \n	Uddipta Sarkar
Nehal Chakraborty
Sonal Chakraborty  \n at	4:08PM

Rabindra Sangeet – Na Jeo Na \n by \n	Saisha Pal \n at	4:17PM

Dance – Shankar Mahadevan’s Breathless \n by \n 	Olee and Tara \n at	4:24PM

Classical bandish, Raag Hamir \n by \n	Trisha Upadhyay \n at	4:30PM

Mashup – Phalgun haway haway, Jodi tor dak shune \n by \n 	Archit Mukherjee  \n at	4:38PM

Dance – Medley of two bengali songs-
1. Megher koley rode heseche
2. Poush toder daak diyeche \n by \n	Rianshika Majumdar
Isha Lahiri Bhagat
Rajeshwari Banerjee
Kaustav Chatterjee.
Praneel Mukherjee
Ahan Banerjee  \n at	4:45PM

Kathak Dance \n by \n	Arpan Dance Academy  \n at	4:52PM

Drama – Tuntunir Golpo  \n by \n	Shinjita Biswas, Disha Dey, Bitan Chowdhury, Arush Bannerjee, Soumili Roychoudhury, Samriddhi Roychoudhury, Hiya, saha, Utsa Acharya, Adrita Pal, Akshita Pal, Suhana Bhattacharjee  \n at 	5:08PM

              ''',style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.0,
                  fontSize: 18,
                ), textAlign: TextAlign.center,
              ),

              Container(
                height: 30,
              ),

              Text("Our Food Menu",style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                  letterSpacing: 0.3,
                  fontSize: 24,
                ), textAlign: TextAlign.center,
              ),
              Container(
                height: 10,
              ),
              Image.asset('assets/images/SP-Food-Lunch.jpeg'),
              Image.asset('assets/images/SP-Food-Dinner.jpeg'),

              Container(
                height: 10,
              ),
              
            ]
         ),   
       );

  }        
}  


  // Widget SaraswatiPuja() {
  //   return Container(
  //      child: ListView(
  //        padding: const EdgeInsets.all(0),
  //           children: <Widget>[

  //             Image.asset('assets/images/saraswati.jpg'),
              
  //           ]
  //      ),
  //   );
  // }
