import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  bool isLoading = true;
  Future<Position>? position;

  @override
  void initState() {
    super.initState();
    position = getPosition();
    getPosition().then((Position myPos) {
      setState(() {
        myPosition =
            'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
        isLoading = false;
      });
    });
  }

  Future<Position> getPosition() async {
    await Future.delayed(const Duration(seconds: 3));
    //await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Current Location - Wida Monica')),
      body: Center(
        child: FutureBuilder(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // Menampilkan loading saat menunggu data.
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text(
                    'Something terrible happened!'); // Menangani error
              }
              if (snapshot.data != null) {
                return Text(
                  'Latitude: ${snapshot.data!.latitude}, Longitude: ${snapshot.data!.longitude}',
                ); // Menampilkan data jika tidak ada error
              } else {
                return const Text('Location data is empty.');
              }
            }
            // Kondisi fallback untuk semua kemungkinan yang tidak terjangkau
            return const Text('Unable to fetch location data.');
          },
        ),
      ),
    );
  }
  /*Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Current Location - Wida Monica')),
      body: Center(
        child: isLoading ? const CircularProgressIndicator() : Text(myPosition),
      ),
    );
  }*/
}
