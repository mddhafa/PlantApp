import 'package:flutter/material.dart';
import 'package:plantapp/screen/getlocation/mappage.dart';

class Mapspage extends StatefulWidget {
  const Mapspage({super.key});

  @override
  State<Mapspage> createState() => _MapsPageState();
}

class _MapsPageState extends State<Mapspage> {
  String? alamatDipilih;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Get Location'),
        backgroundColor: const Color.fromARGB(255, 0, 221, 255),
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Alamat yang dipilih: '),
                  IconButton(
                    icon: const Icon(Icons.map, color: Colors.blue),
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapPage(),
                        ),
                      );
                      if (result != null) {
                        setState(() {
                          alamatDipilih = result;
                        });
                      }
                    },
                  ),
                ],
              ),

              alamatDipilih == null
                  ? const Text('Tidak ada alamat yang dipilih')
                  : Text(alamatDipilih!),
            ],
          ),
        ),
      ),
    );
  }
}
