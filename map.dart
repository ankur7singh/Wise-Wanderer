import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'mussoorie.dart';
class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  late MapShapeSource _dataSource;
  late List<MapModel> _mapData;
  int selectedIndex = 1;
  @override
  void initState() {
    super.initState();
    _mapData = _getMapData();
    _dataSource = MapShapeSource.network('https://un-mapped.carto.com/api/v2/sql?filename=states_india&q=select+*+from+public.states_india&format=geojson&bounds=&api_key=',
    shapeDataField: 'st_nm',
    dataCount: _mapData.length,
    primaryValueMapper: (int index) => _mapData[index].state,
    dataLabelMapper: (int index) => _mapData[index].stateCode,
    shapeColorValueMapper: (int index) => _mapData[index].color,);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: NetworkImage('https://w0.peakpx.com/wallpaper/335/544/HD-wallpaper-elegant-black-929-abstract-dark-minimal-simple-sleek-theme-thumbnail.jpg'),
           fit: BoxFit.cover,
         ),
       ),
       child: Column(
         children: <Widget>[
           Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
           child: Text('States of India',
             style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),
           ),
           ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: SfMaps(layers: [
                 MapShapeLayer(
                   source: _dataSource,

                 selectedIndex: selectedIndex,
                 onSelectionChanged: (int index){
                     setState(() {
                       selectedIndex = index;
                       Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) => const Mussoorie())
                       );
                     });
                 },
                 showDataLabels: true,
                 /*shapeTooltipBuilder: (BuildContext context, int index){
                     return Padding(padding: EdgeInsets.all(8),
                     child: Text(
                     _mapData[index].state,
                     style: TextStyle(color: Colors.white, fontSize: 15),
                     ),
                     );
                 },
                 tooltipSettings: MapTooltipSettings(color: Colors.black),*/
               )]),
             ),
           ),
         ],
       ),
     ),
    );
  }
  static List<MapModel> _getMapData(){
    return <MapModel>[
      MapModel('Andhra Pradesh','AP', Colors.red),
      MapModel('Arunanchal Pradesh','ARP', Colors.purple),
      MapModel('Assam','AM', Colors.teal.shade200),
      MapModel('Bihar','BH', Colors.brown.shade400),
      MapModel('Chhattisgarh','CH', Colors.amber.shade200),
      MapModel('Goa','GO', Colors.blueAccent),
      MapModel('Gujarat','GU', Colors.yellow),
      MapModel('Haryana','HR', Colors.lime.shade200),
      MapModel('Himachal Pradesh','HP', Colors.purple.shade900),
      MapModel('Jharkhand','JH', Colors.lightGreen),
      MapModel('Karnataka','KR', Colors.blue.shade200),
      MapModel('Kerala','KL', Colors.green.shade900),
      MapModel('Madhya Pradesh','MP', Colors.deepOrange.shade200),
      MapModel('Maharashtra','MH', Colors.blue.shade400),
      MapModel('Manipur','MI', Colors.brown.shade900),
      MapModel('Meghalaya','MG', Colors.deepPurple),
      MapModel('Mizoram','MZ', Colors.grey.shade50),
      MapModel('Nagaland','NG', Colors.tealAccent),
      MapModel('Odisha','OD', Colors.blueGrey),
      MapModel('Punjab','PJ', Colors.pinkAccent),
      MapModel('Rajasthan','RN', Colors.red.shade100),
      MapModel('Sikkim','SK', Colors.grey),
      MapModel('Tamil Nadu','TN', Colors.grey.shade600),
      MapModel('Telangana','TL', Colors.lightGreenAccent),
      MapModel('Tripura	','TP', Colors.indigo.shade100),
      MapModel('Uttar Pradesh','UP', Colors.orange),
      MapModel('Uttarakhand','UK', Colors.cyan.shade100),
      MapModel('West Bengal','WB', Colors.pink.shade200),
      MapModel('Jammu & Kashmir','J&K', Colors.blueAccent),
    ];
  }
}


class MapModel{
  MapModel(this.state, this.stateCode, this.color);
  String state;
  String stateCode;
  Color color;
}