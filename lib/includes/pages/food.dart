import 'package:flutter/material.dart';
//import '../../includes/drawer.dart';

class FoodPage extends StatelessWidget {
  FoodPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Food Menu"),),
      body: foodPageBody(),
//       drawer: new DrawerOnly(),
    );
  }
}

Widget foodPageBody(){

  return ListView(
  padding: const EdgeInsets.all(0),
    children: <Widget>[
      Hero(
        tag: 'FoodHero',
        child: Image.asset('assets/images/food1.jpg', fit: BoxFit.fill,),
      ),
      
      Container(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Text("কষা মাংস",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'HindSiliguri',
          letterSpacing: 0.3,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Text("টাইমিং বোঝেন ? টাইমিং ?",style: TextStyle(
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
        child: Text("সৌরভের ব্যাট এর ফেস ওপেন করে অফ সাইড মারা সেই বাউন্ডারি । নিখুঁত টাইমিং । আর পারফেকশন বোঝেন ? পারফেকশন ?",style: TextStyle(
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
        child: SelectableText("প্রদোষ চন্দ্র মিত্র ওরফে ফেলুদা। লম্বা, চারমিনার প্রিয়, তীক্ষ্ণ বুদ্ধি । আমাদের শার্লক হোমস, তিনিই মাদের মার্লন ব্রান্ডো। মুগ্ধ হয়ে দেখতে হয়, দেখতে দেখতে মুগ্ধ হতে হয়।",style: TextStyle(
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
        child: SelectableText("পসেই টাইমিং আর সেই পারফেকশন মিশলে NVBA র কষা মাংস হয়, সে খবর রাখেন?",style: TextStyle(
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
        child: SelectableText("Friday Night",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.4,
          fontSize: 26,
        ),),
      ),
      ListTile(
      leading: SelectableText("Adult",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      trailing: Text('Kids',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      ),
      ListTile(
      leading: SelectableText("Fried Rice",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Fried Rice',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      ListTile(
      leading: SelectableText("Chilli - Chicken/Paneer",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Orange Chicken',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      ListTile(
      leading: SelectableText("Kamola bhog",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Mochi Ice cream',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),

      Image.asset('assets/images/food2.jpg', fit: BoxFit.fill,),
      

      Padding(
        padding: EdgeInsets.all(15.0),
        child: SelectableText("Saturday Lunch",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.4,
          fontSize: 26,
        ),),
      ),
      ListTile(
      leading: SelectableText("Adult",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      trailing: Text('Kids',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      ),
      ListTile(
        title: Text("Bhoger Khichuri",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      
      ),
      ListTile(
        title: Text("Mooch-Mooche Beguni",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20, 
          ),
          textAlign: TextAlign.center,
        ), 
      
      ),
      ListTile(
      
      title: Text("Khejur Diye Tomator Chatni", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      
      ),
      ListTile(
      title: Text("Payesh", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      ),
      ListTile(
      title: Text("Fal-prasad-misti", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      ),

       Image.asset('assets/images/food3.jpg', fit: BoxFit.fill,),

      Padding(
        padding: EdgeInsets.all(15.0),
        child: SelectableText("Saturday Dinner",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.4,
          fontSize: 26,
        ),),
      ),
      ListTile(
      leading: SelectableText("Adult",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      trailing: Text('Kids',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      ),
      ListTile(
      leading: SelectableText("Garam Bhaat",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Naan',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      ListTile(
      leading: SelectableText("Lau Diye Dugdugi Moong Dal",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Butter Chicken',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      
      ListTile(
      leading: SelectableText("Fulkopir koraisuthir karsaji",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Kamola Bhog',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      ListTile(
      leading: SelectableText("Ilish Macher Paturi - Patol posto",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('..',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      // ListTile(
      // leading: SelectableText("Ilish Macher Paturi - Patol posto (For Veg)",style: TextStyle(
      //     color: Colors.black87,
      //     fontWeight: FontWeight.w400,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 20,
      //   ),),
      // trailing: Text('..',style: TextStyle(
      //     color: Colors.black87,
      //     fontWeight: FontWeight.w400,
      //     fontFamily: 'OpenSans',
      //     letterSpacing: 0.3,
      //     fontSize: 20,
      //   ),),
      // ),
      ListTile(
      leading: SelectableText("Aamer Chatni",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      ListTile(
      leading: SelectableText("Misti Doi",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),



      Image.asset('assets/images/food4.jpg', fit: BoxFit.fill,),

      Padding(
        padding: EdgeInsets.all(15.0),
        child: SelectableText("Sunday Lunch",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.4,
          fontSize: 26,
        ),),
      ),
      ListTile(
      leading: SelectableText("Adult",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      trailing: Text('Kids',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      ),
      ListTile(
      title: Text("Sugandhi Basmati", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      ),
      ListTile(
      title: Text("Sanatani Shukto", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      ),
      ListTile(
      title: Text("Mutton Haribandho / Enchor er Dalna (For Veg)", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      ),
      ListTile(
      title: Text("Anaraser Chutney", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      ),
      ListTile(
      title: Text("Nalen Gurer Ice cream", style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ), 
      ),

      Image.asset('assets/images/food5.jpg', fit: BoxFit.fill,),

      Padding(
        padding: EdgeInsets.all(15.0),
        child: SelectableText("Sunday Night",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.4,
          fontSize: 26,
        ),),
      ),
      ListTile(
      leading: SelectableText("Adult",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      trailing: Text('Kids',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 22,
        ),),
      ),
      ListTile(
      leading: SelectableText("Fried Rice",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Fried Rice',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      ListTile(
      leading: SelectableText("Raita",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Fries',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),
      ListTile(
      leading: SelectableText("Kalo Jaam",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      trailing: Text('Milkshake',style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          fontFamily: 'OpenSans',
          letterSpacing: 0.3,
          fontSize: 20,
        ),),
      ),


      Container(
        height: 80,
      ),
      
    ],
);
  


}