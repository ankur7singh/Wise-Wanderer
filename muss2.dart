import 'package:flutter/material.dart';
import 'data.dart';
class Muss2 extends StatefulWidget {
  const Muss2({super.key});

  @override
  State<Muss2> createState() => _Muss2State();
}
var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;
class _Muss2State extends State<Muss2> {

  var currentPage = images.length - 1.0;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 100, right: 20),
            child: Text('Mussoorie',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade100,
                letterSpacing: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 100, right: 20),
            child: Text('The King of Hills',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade100,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        icon:const Icon(Icons.sunny, color: Colors.black,),
                        onPressed: () {},
                        iconSize: 70,
                        color: Colors.black,
                      )
                  ),
                  const SizedBox(height: 2),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('"Mussoorie, it is a ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8,top: 0.1),
                    child: Text('heaven for hill lovers as',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('the whole city is built upon hills"',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8,top: 20),
                    child: Text('MAIN ATTRACTIONS',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.indigo,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      CardScrollWidget(currentPage),
                      Positioned.fill(
                        child: PageView.builder(
                          itemCount: images.length,
                          controller: controller,
                          reverse: true,
                          itemBuilder: (context, index) {
                            return Container();
                          },
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class CardScrollWidget extends StatefulWidget {
  final double currentPage;

  CardScrollWidget(this.currentPage);

  @override
  State<CardScrollWidget> createState() => _CardScrollWidgetState();
}

class _CardScrollWidgetState extends State<CardScrollWidget> {
  var padding = 20.0;

  var verticalInset = 20.0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = constraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = [];

        for (var i = 0; i < images.length; i++) {
          var delta = i - widget.currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              (primaryCardLeft - horizontalInset * -delta * (isOnRight ? 15 : 1))
                  .clamp(0.0, double.infinity);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * delta.clamp(0.0, 1.0),
            bottom: padding + verticalInset * delta.clamp(0.0, 1.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0,
                    )
                  ],
                ),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(title[i],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontFamily: "SF-Pro-Text-Regular",
                                  )),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text("Read Later",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}