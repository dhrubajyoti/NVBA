import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';


import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import '../playerHelper.dart';

typedef void OnError(Exception exception);
const kUrl1 = 'https://dhrubajyoti.com/nvba/music/MahalayabyBirendraKrishnaBhadra.mp3';

class MahalayaPage extends StatefulWidget {
  MahalayaPage({Key key}) : super(key: key);

  _MahalayaPageState createState() => _MahalayaPageState();
}

class _MahalayaPageState extends State<MahalayaPage> {

  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String localFilePath;


  Future<int> _getDuration() async {
    File audiofile = await audioCache.load('audio2.mp3');
    await advancedPlayer.setUrl(
      audiofile.path,
      isLocal: true,
    );
    int duration = await Future.delayed(Duration(seconds: 2), () => advancedPlayer.getDuration());
    return duration;
  }

  getLocalFileDuration() {
    return FutureBuilder<int>(
      future: _getDuration(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('No Connection...');
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Text('Awaiting result...');
          case ConnectionState.done:
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            return Text('audio2.mp3 duration is: ${Duration(milliseconds: snapshot.data)}');
        }
        return null; // unreachable
      },
    );
  }




  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Mahalaya"),),
      body: mahalayaPageBody(),
//       drawer: new DrawerOnly(),
    );
  }
}



Widget mahalayaPageBody(){

  return new ListView(
  padding: const EdgeInsets.all(0),
    children: <Widget>[
      Hero(
        tag: 'AboutUsHero',
        child: Image.asset('assets/images/Mahalaya-1.jpg'),
      ),
      
      PlayerWidget(url: kUrl1, mode: PlayerMode.LOW_LATENCY),

      // Container(
      //   height: 20,
      // ),
      
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Significance of Mahalaya, Date and Time",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.4,
          fontSize: 26,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Durga puja is round the corner. This year it will begin from October 4 (Maha Shashti) and will end on Oct 8 (Maha Dashami). This year the auspicious day of Mahalaya will begin from 28 September 2:50 am to 29 September 12:24 am. Mahalaya marks the countdown for Durga Puja. This day marks the end of Pitru Paksha and the beginning of Devi Paksha. A big part of Mahalaya is to remember departed souls by offering 'tarpan'.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Mahalaya is a kind of invocation or invitation to the Mother Goddess through chanting mantras to descend on earth to ward off all evils. The day marks the beginning of Navaratri and Durga Puja.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Devi Paksha in itself is the waxing phase of the moon which comes in the month of Ashwin as per Hindu calendar. It is believed that Goddess Durga along with her family of Ganesha, Laxmi, Saraswati, and Kartikeya starts Her journey to Earth on this day.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("The day of Mahalaya bears supreme significance to the Bengali community. The day is immensely important because on this day people throng to the holy river Ganga in order to pay homage (tarpan) to their ancestors and forefathers.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Image.asset('assets/images/tarpan2.jpg'),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Mythology says that Brahma, Vishnu, and Maheshwara created Goddess Durga to defeat demon king Mahishasura. The demon king had gotten a boon that he cannot be exterminated by anyone, including gods and goddesses. The creators of Goddess Durga had given her several weapons to fight against the demon king. Basically, Mahalaya connotes the arrival of Goddess Durga to Earth. Goddess Durga is believed to be the Goddess of supreme power or Goddess Shakti over evil.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Dushera or Durga puja- Navratri or the nine nights (nav ratris) of the festival commemorate the nine avatars of Goddess Durga.",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 16,
        ),),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("Mahalaya has become synonymous with the All India Radio program 'Mahishasura Mardini'. It is a beautiful recitation of the scriptural verses of the 'Chandi Kavya' along with various devotional songs. People get up in the pre-dawn hours to listen to the tune of the Mahishasura Mardini broadcast.",style: TextStyle(
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