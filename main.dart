
import 'package:firstapp/NavBar.dart';
import 'package:firstapp/blog.dart';
import 'package:firstapp/second_page.dart';
import 'package:firstapp/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'first_page.dart';
import 'proto.dart';
import 'NavBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'blog.dart';


void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home: SplashScreen(),

));}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }
    void onPageChanged(int page){
      setState(() {
        _page = 0;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children:  [
         First(),
          Third(),
          Second(),
          LoginPage(),
        ],
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            label: '',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sledding, color: Colors.white,),
            label: '',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public, color: Colors.white,),
            label: '',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.white,),
            label: '',
            backgroundColor: Colors.transparent,
          ),
        ],
        onTap: navigationTapped,
      ),
    );
  }
  }

