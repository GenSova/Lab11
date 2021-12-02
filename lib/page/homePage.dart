import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class homePage extends StatefulWidget {
  @override
  _homePagePageState createState() => _homePagePageState();

}

class _homePagePageState extends State<homePage> {
  TabController control;
  int currentIndex = 0;

  //////////////////
  static const _initialCameraPosition = CameraPosition(
      target: LatLng(43.233074, 76.890443),
      zoom: 13.0
  );

  List<Marker> markers = [];

  @override
  void initState() {
    initilize();
    super.initState();
  }

  initilize() {
    Marker first = Marker(
      markerId: MarkerId('first'),
      position: LatLng(43.249024, 76.868368),
      infoWindow: InfoWindow(title: 'First'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    Marker second = Marker(
      markerId: MarkerId('second'),
      position: LatLng(43.226415, 76.873059),
      infoWindow: InfoWindow(title: 'Second'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    markers.add(first);
    markers.add(second);
    setState(() {

    });
  }

  ///////////

  getIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
        child: ListView(
          children: <Widget>[
            Container(
              height: 90,
            child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.grey[200],
                    elevation: 0,
                    bottom: TabBar(
                      controller: control,
                        onTap: (index){
                        getIndex(index);
                        },
                        unselectedLabelColor: Color.fromRGBO(72, 84, 108, 1),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(72, 84, 108, 1)),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Color.fromRGBO(72, 84, 108, 1), width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Список"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Color.fromRGBO(72, 84, 108, 1), width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("На карте"),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ))),
            if (currentIndex == 0)
            Container(
              height: 100,
            margin: EdgeInsets.only(top: 20, bottom: 3),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                    child: Image.asset('images/asu.png')
                    ),
                    Container(
                        child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                              child: Text('Бекешева 78', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                          child: Text('Наурызбайский район,\nмикрорайон Акжар,\nулица Бекешева, 79/2',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey)),
                        ))]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.chevron_right_rounded, size: 50, color: Color.fromRGBO(72, 84, 108, 1)),
                      ),
                    ),
                  ],
              ),
            ),
            ),
            if (currentIndex == 0)
            Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 3),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                        child: Image.asset('images/asu.png')
                    ),
                    Container(
                      child: Column(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Тастак 3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                )
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 30, bottom: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('микрорайон Тастак-3,\nулица Артёма',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey)),
                                ))]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 65),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.chevron_right_rounded, size: 50, color: Color.fromRGBO(72, 84, 108, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (currentIndex == 0)
            Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 3),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                        child: Image.asset('images/asu.png')
                    ),
                    Container(
                      child: Column(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('№8 мкр. 25', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                )
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 30, bottom: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('8-й микрорайон, 25',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey)),
                                ))]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.chevron_right_rounded, size: 50, color: Color.fromRGBO(72, 84, 108, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (currentIndex == 1)
              Container(
                height: 500,
                width: 500,
                child: GoogleMap(
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  initialCameraPosition: _initialCameraPosition,
                  markers: markers.map((e) => e).toSet(),
                ),
              )
          ],
      ),
      ),
    );
  }
  }