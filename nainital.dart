import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nainital extends StatefulWidget {
  const Nainital({super.key});

  @override
  State<Nainital> createState() => _NainitalState();
}

class _NainitalState extends State<Nainital> {
  bool isExpanded = false; // Track the expansion state

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView( // Added SingleChildScrollView to prevent pixel overflow
        child: Column(
          children: [
            Stack(
              children: [
                // Outer purple background container
                Container(
                  height: 1120,
                  decoration: BoxDecoration(
                    color: Color(0xFFB079DB),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                ),
                // Middle purple background container
                Container(
                  height: 890,
                  decoration: BoxDecoration(
                    color: Color(0xFF7215BA),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                ),
                // Inner container with expanding functionality
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: isExpanded ? 860 : 660,
                  decoration: BoxDecoration(
                    color: Color(0xFF2C004E),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Day 0 Heading
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 410, left: 10),
                            child: Text(
                              'Day 0',
                              style: GoogleFonts.satisfy(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: Colors.white70,
                                decoration: TextDecoration.none,
                                height: 0.9,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Train description with cost
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Train from NDLS to Haldwani/Kathgodam',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Cost - ₹300',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        // Bus description with cost
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Bus from NDLS to Haldwani/Kathgodam',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Cost - ₹300',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        // Read More / Read Less Button
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isExpanded = !isExpanded; // Toggle expansion
                              });
                            },
                            child: Text(
                              isExpanded ? 'Read Less' : 'Read More',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Additional Container below the expanding one
                Container(
                  height: 405,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title Section (Nainital)
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 30),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'N',
                                  style: GoogleFonts.satisfy(
                                    fontSize: 100,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white70,
                                    decoration: TextDecoration.none,
                                    height: 0.9,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ainital',
                                  style: GoogleFonts.satisfy(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white70,
                                    decoration: TextDecoration.none,
                                    height: 0.9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Text(
                            "The Lake City Of India",
                            style: GoogleFonts.satisfy(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Colors.white70,
                              decoration: TextDecoration.none,
                              height: 1.0,
                            ),
                          ),
                        ),
                        // Horizontal Scroll Section (Category Cards)
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: CategoryCard(
                                    title: "Naina Peak",
                                    imageUrl:
                                    "https://www.nainital.info/wp-content/uploads/2014/06/Naina-Peak-Nainital-view-of-nainital-at-night.jpg",
                                  ),
                                ),
                                CategoryCard(
                                  title: "Tiffin Top",
                                  imageUrl:
                                  "https://images.jdmagicbox.com/comp/delhi/c5/9999p5942.5942.141220113021.y9c5/catalogue/tiffin-top-nainital-ho-nainital-tourist-attraction-hb6qb6qjys.jpg",
                                ),
                                CategoryCard(
                                  title: "Bhimtal",
                                  imageUrl:
                                  "https://img.veenaworld.com/wp-content/uploads/2022/10/12-Most-Beautiful-Places-to-Visit-in-Bhimtal.jpg",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}








// Category Card widget for horizontal scrolling cards
class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryCard({
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black45],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.none,
                      shadows: [
                        Shadow(
                          blurRadius: 2,
                          color: Colors.black,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







