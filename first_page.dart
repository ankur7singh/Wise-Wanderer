import 'package:flutter/material.dart';
import 'mussoorie.dart';
import 'prayagraj.dart';
import 'rishikesh.dart';
import 'dart:ui';
import 'NavBar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'muss1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'kashmir.dart';

class First extends StatefulWidget {
  const First({super.key});
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final List<String> imageUrls = [
    'https://media-cdn.tripadvisor.com/media/photo-s/16/8f/b0/a3/photo2jpg.jpg',
    'https://www.nainital.info/wp-content/uploads/2014/06/Naina-Peak-Nainital-view-of-nainital-at-night.jpg',
    'https://media.cntraveler.com/photos/643d5d0a5722b1af03793a06/16:9/w_2560%2Cc_limit/Dal%2520Lake_GettyImages-1323846766.jpg',
    'https://www.authenticindiatours.com/app/uploads/2022/05/10-reasons-to-visit-Kerala-Kumarakom-Back-Waters-Boat-House-1400x550-c-default.jpg',
    'https://abhimantrit.com/wp-content/uploads/2023/03/Timing-of-Ganga-Aarti-Haridwar-742x460.jpg',
    'https://s3.india.com/wp-content/uploads/2024/04/Feature-Image_-Udaipur.jpg##image/jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Massourie-cloudy-morning.jpg/800px-Massourie-cloudy-morning.jpg',
    'https://www.travelalaska.com/sites/default/files/2021-12/ExploreAlaska_Itineraries_River%20Rafting%20in%20Southcentral%20Alaska_Hero_%28ATIA%2C%20Michael%20DeYoung%29_2.jpg',
    'https://www.agoda.com/wp-content/uploads/2023/02/Goa-overview-things-to-do-in-goa.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4gFSpYmL-ebqp8zDvz8egAWMsmQkRdEOTbKCFdVeKhZXivtfzcNGKm_tDgSqDS3OYI-4&usqp=CAU',

  ];

  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = _buildPages();
    pages.shuffle();
  }

  List<Widget> _buildPages() {
    return [
      _buildPage('Kashmir', imageUrls[2], Colors.cyan[50], Kashmir()),
      _buildPage('Nainital', imageUrls[1], Colors.indigo, Muss()),
      _buildPage('Prayagraj', imageUrls[0], Colors.orange[100], Prayag()),
      _buildPage('Rishikesh', imageUrls[7], Colors.cyan[50], Fourth()),
      _buildPage('Mussoorie', imageUrls[6], Colors.grey, Mussoorie()),
      _buildPage('Kerala', imageUrls[3], Colors.green.shade100, Fourth()),
      _buildPage('Haridwar', imageUrls[4], Colors.orange[100], Prayag()),
      _buildPage('Udaipur', imageUrls[5], Colors.lightBlue[100], Prayag()),
      _buildPage('Goa', imageUrls[8], Colors.brown[200], Prayag()),
      _buildPage('Meghalaya', imageUrls[9], Colors.green[100], Prayag()),
    ];
  }

  Widget _buildPage(String title, String imageUrl, Color? buttonColor, Widget page) {
    return Center(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.satisfy(
                          fontSize: 60,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2.0,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          '"No matter the month you visit, it always remains the heaven on Earth"',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => page),
                            );
                          },
                          icon: const Icon(Icons.arrow_forward_ios, color: Colors.black54),
                          label: const Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(buttonColor),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white70, size: 40),
        title: Text(
          'Explore',
          style: GoogleFonts.permanentMarker(
            color: Colors.white70,
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white70, size: 40),
          )
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: pages,
      ),
    );
  }
}

