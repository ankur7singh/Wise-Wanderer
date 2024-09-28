import 'package:flutter/material.dart';
class Prayag2 extends StatefulWidget {
  const Prayag2({super.key});

  @override
  State<Prayag2> createState() => _Prayag2State();
}

class _Prayag2State extends State<Prayag2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 100, right: 20),
            child: Text('Prayagraj',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.yellow.shade100,
                letterSpacing: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 100, right: 20),
            child: Text('The Sangam Nagri',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.yellow.shade100,
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
                   Padding(
                    padding: const EdgeInsets.only(left: 8,top: 20),
                    child: Text('MAIN ATTRACTIONS',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange.shade800,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 300,
                        width: 250,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 250,
                        width: 300,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 350,
                        color: Colors.red,
                      ),
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
