import 'package:flutter/material.dart';
import 'dart:ui';
import 'prayagraj.dart';
import 'mussoorie.dart';
import 'rishikesh.dart';
class Proto extends StatefulWidget {
  const Proto({super.key});

  @override
  State<Proto> createState() => _ProtoState();
}

class _ProtoState extends State<Proto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Where To?'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 9.0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Material(
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Mussoorie())
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black87,width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Ink.image(
                      image: NetworkImage('https://thetravelboat.com/wp-content/uploads/2021/08/Mussoorie.jpg'),
                      height: 210,
                      width: 400,
                      child: Center(
                        child: const Text(
                          'Mussoorie',
                          style: TextStyle(fontSize: 40, color: Colors.black87, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Material(
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Prayag())
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black87,width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Ink.image(
                      image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/16/8f/b0/a3/photo2jpg.jpg'),
                      height: 210,
                      width: 400,
                      child: Center(
                        child: const Text(
                          'Prayagraj',
                          style: TextStyle(fontSize: 40, color: Colors.black87, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Material(
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fourth())
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black87,width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Ink.image(
                      image: NetworkImage('https://indiathrills.com/wp-content/uploads/2020/08/Rishikesh-River-Rafting_3.jpg'),
                      height: 210,
                      width: 400,
                      child: Center(
                        child: const Text(
                          'Rishikesh',
                          style: TextStyle(fontSize: 40, color: Colors.black87, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







































