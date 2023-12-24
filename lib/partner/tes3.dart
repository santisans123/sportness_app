import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:osm_flutter_hooks/osm_flutter_hooks.dart';
//import 'package:osm_flutter_hooks/osm_flutter_hooks.dart';

class Tes3 extends StatefulWidget {
  Tes3({Key? key}) : super(key: key);

  @override
  _SimpleExampleState createState() => _SimpleExampleState();
}

class _SimpleExampleState extends State<Tes3> {
  late PageController controller;
  late int indexPage;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 1);
    indexPage = controller.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("osm simple hook"),
      ),
      body: SimpleOSM(),
    );
  }
}

class SimpleOSM extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final controller = useMapController(
        initPosition: GeoPoint(
      latitude: -7.860743,
      longitude: 112.684213,
    ));
    useMapIsReady(
      controller: controller,
      mapIsReady: () async {
        await controller.setZoom(zoomLevel: 15);
      },
    );
    return OSMFlutter(
      controller: controller,
      osmOption: OSMOption(
        markerOption: MarkerOption(
          defaultMarker: MarkerIcon(
            icon: Icon(
              Icons.person_pin_circle,
              color: Colors.blue,
              size: 56,
            ),
          ),
        ),
      ),
    );
  }
}
