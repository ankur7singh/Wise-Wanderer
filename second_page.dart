import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'inside_third.dart';
import 'NavBar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'map.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var arrNames = [
    'Mountains', 'Deserts', 'Flowers', 'Beaches', 'Monuments', 'Lakes', 'Rivers', 'Valleys'
  ];
  var arrImages = [
    'https://cdn.britannica.com/73/189273-131-DA3E2F9A/Denali-peak-center-Alaska-Range-North-America.jpg',
    'https://www.thoughtco.com/thmb/FU4GwHf9m__TD0tsOKJPcX6Ru_Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/wave-pattern-desert-landscape--oman-886145780-5c45542046e0fb00012ebabf.jpg',
    'https://www.trekupindia.com/wp-content/uploads/2022/06/towards-valley-of-flowers-1.png',
    'https://assets.architecturaldigest.in/photos/633178c5a38e47493d55aeb2/16:9/w_1615,h_908,c_limit/SaffronStays%20Ocean%20Pearl,%20Hejamady2.png',
    'https://www.holidify.com/images/cmsuploads/compressed/Taj_Mahal_20180814141729.png',
    'https://media.cntraveler.com/photos/6367ff45429b3d457f71bdac/16:9/w_2580,c_limit/West-Lake-China-GettyImages-1169250112.jpg',
    'https://img.traveltriangle.com/blog/wp-content/uploads/2018/11/Rivers-of-the-World-Cover.jpg',
    'https://img.freepik.com/premium-photo/valley-mountains-is-called-river_900101-2822.jpg'
  ];
  var arrImage = [
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Wildlife-Safari.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Trekking.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Glamping-and-Camping.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Hot-Air-Ballooning.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Skiing.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/River-Rafting.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Paragliding.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Biking.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Surfing.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Bungee-Jumping.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Water-Sports-Activities.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Scuba-Diving-and-Snorkeling.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Flying-Fox.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Mountaineering.jpg',
    'https://www.tourism-of-india.com/blog/wp-content/uploads/2018/03/Conquer-the-Land-of-High-Passes-%E2%80%93-Ladakh-Jammu-and-Kashmir.jpg',
  ];
  var arrName = [
    'Wildlife Safari', 'Trekking', 'Camping', 'Ballooning', 'Skiing', 'Rafting',
    'Paragliding', 'Biking', 'Surfing', 'Bungee Jumping', 'Water Sports',
    'Scuba Diving', 'Zip Lining', 'Mountaineering',
  ];
  var arrPrice = [
    '2500', '2500', '2500', '2500', '2500', '2500', '2500', '2500',
    '2500', '2500', '2500', '2500', '2500', '2500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;

          return Stack(
            children: [
              // Background image
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        'https://img.freepik.com/free-vector/worldwide-connection-gray-background-illustration_53876-63934.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Foreground content
              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: const Text(
                      'Discover',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    iconTheme: const IconThemeData(color: Colors.black, size: 40),
                    centerTitle: true,
                    floating: true,
                    pinned: false,
                    snap: true,
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 40,
                        ),
                      )
                    ],
                    expandedHeight: screenHeight * 0.1, // Adjusted height
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                'https://img.freepik.com/free-vector/worldwide-connection-gray-background-illustration_53876-63934.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: EdgeInsets.all(screenWidth * 0.05),
                          child: CarouselSlider.builder(
                            options: CarouselOptions(
                              height: screenHeight * 0.25, // Adjusted height
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                            ),
                            itemCount: arrImages.length,
                            itemBuilder: (context, index, realIndex) {
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                                color: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: arrImages[index],
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 3),
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          )),
                                      child: ListTile(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const Inside()));
                                        },
                                        title: Text(
                                          arrNames[index],
                                          style: TextStyle(
                                              fontSize: screenWidth * 0.06, // Adjusted size
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03), // Adjusted space
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                          child: Text(
                            'Life withholds at the highest level with running adrenaline inside our veins',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: screenWidth * 0.05, // Adjusted size
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: screenWidth * 0.03, // Adjusted spacing
                              mainAxisSpacing: screenHeight * 0.03, // Adjusted spacing
                              mainAxisExtent: screenHeight * 0.40, // Adjusted extent
                            ),
                            itemBuilder: (context, index) {
                              return Card(
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                color: Colors.black45,
                                child: Column(
                                  children: [
                                    CachedNetworkImage(
                                      height: screenHeight * 0.28, // Adjusted height
                                      imageUrl: arrImage[index],
                                      imageBuilder: (context, ImageProvider) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black, width: 3),
                                              borderRadius: const BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                topLeft: Radius.circular(20),
                                              ),
                                              image: DecorationImage(
                                                image: ImageProvider,
                                                fit: BoxFit.cover,
                                              )),
                                          child: Padding(
                                            padding: EdgeInsets.all(screenWidth * 0.02),
                                            child: ListTile(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                        const Inside()));
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(screenWidth * 0.02),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  arrName[index],
                                                  style: TextStyle(
                                                      letterSpacing: 1.4,
                                                      color: Colors.white,
                                                      fontSize: screenWidth * 0.05, // Adjusted size
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  height: screenHeight * 0.015, // Adjusted space
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      'AVERAGE PRICE :',
                                                      style: TextStyle(
                                                          letterSpacing: 1.0,
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.w400),
                                                    ),
                                                    SizedBox(
                                                      width: screenWidth * 0.02, // Adjusted space
                                                    ),
                                                    Text(
                                                      arrPrice[index],
                                                      style: const TextStyle(
                                                          letterSpacing: 1.0,
                                                          color: CupertinoColors
                                                              .activeGreen,
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: arrName.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}


















