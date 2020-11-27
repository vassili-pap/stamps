import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

_getCurrentLocation() async{
    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
    return position;
}

Set<Marker> _markers = HashSet<Marker>();
Set<Polygon> _polygons = HashSet<Polygon>();
GoogleMapController _mapController;
BitmapDescriptor _markerIcon;

@override
  void initState() {
    super.initState();
    _setMarkerIcon();
    _setPolygons();
    _getCurrentLocation();
  }


void _setMarkerIcon() async {
  _markerIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'assets/starbucks.png');
}

void _setPolygons() {
  List<LatLng> polygonLatLongs = List<LatLng>();
  polygonLatLongs.add(LatLng(50.116841, 8.676182));
  polygonLatLongs.add(LatLng(50.116394, 8.676496));
  polygonLatLongs.add(LatLng(50.117243, 8.678035));
  polygonLatLongs.add(LatLng(50.116868, 8.678317));
  
  _polygons.add(
    Polygon(
      polygonId: PolygonId("0"),
      points: polygonLatLongs,
      strokeWidth: 1,
    ),
  );
}

void _onMapCreated(GoogleMapController controller) {
  _mapController = controller;

  setState(() {
    _markers.add(
      Marker(
        markerId: MarkerId("0"),
        position: LatLng(50.114489, 8.675227), 
        infoWindow: InfoWindow(
          title: "TITEL",
          snippet: "SNIPPET",
        ),
        icon: _markerIcon),
     );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
        target: LatLng(50.114489, 8.675227), 
        zoom: 15,
        ),
        markers: _markers,
        polygons: _polygons,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
      Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: DraggableScrollableSheet(
          initialChildSize: 0.2,
          minChildSize: 0.2,
          maxChildSize: 0.3,
          builder: (context,controller){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                color: Colors.grey[100],
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                )
              ),
              
 
              child: ListView.builder(
                itemCount: 2,
                controller: controller,
                itemBuilder: (BuildContext context, index){
                  return ListTile(
                    title: Text('Text ${index}'),
                    subtitle: Image.asset('assets/stymps2.png', scale: 1.5),
                  );
                }
                
              )

              // child: Column(children: [
              //   Center(
              //         child: Image.asset('assets/stymps2.png', 
              //         scale: 1.5),
              //       ),
                                    
                    // Center(
                    //     child: ListView.builder(
                    //     itemCount: 2,
                    //     controller: controller,
                    //     itemBuilder: (BuildContext context, index){
                    //       return ListTile(
                    //         title: Text('Text ${index}'),
                    //       );
                    //     }
                    //   ),
                    // ),     
              // ],)
           );
          },
        ),
        )
       ],
      ),
    );
  }
}