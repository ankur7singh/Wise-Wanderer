import 'package:flutter/material.dart';
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
child: ListView(
  children: [
    UserAccountsDrawerHeader(
        accountName: Text('Nomad Wolf',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
        accountEmail: Text('Be like a Grey Wolf, keep travelling',style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w500),
            ),
      decoration: BoxDecoration(
        color: Colors.white38,
          image: DecorationImage(
            image: NetworkImage('https://files.worldwildlife.org/wwfcmsprod/images/Wolf_Facts_travel_blog/blog_show/9j7ha1b2f7_wolf_female_2_jim_peaco.jpg',),
            fit: BoxFit.cover,
          )
      ),
    ),
    ListTile(
      title: Text('Help', style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),),
      onTap: (){},
    ),
    ListTile(
      title: Text('Contact Us',style: TextStyle(

          fontSize: 20,
          fontWeight: FontWeight.w500
      ),),
      onTap: (){},
    ),
    ListTile(
    title: Text('Careers',style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500
    ),),
    onTap: (){},
    ),
    ListTile(
    title: Text('About Us',style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500
    ),),
    onTap: (){},
    ),
  ],
),
    );
  }
}
