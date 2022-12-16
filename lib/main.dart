import 'package:app/services/wheater_api_client.dart';
import 'package:app/views/aditional_info.dart';
import 'package:app/views/current_wheater.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

WheaterApiClient client = WheaterApiClient();

@override
  void initState() {
    
    client.getCurrentWheaten("Georgia");
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          "Wheater",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded, "30.7", "Natal"),
          SizedBox(
            height: 60.0,
          ),
          Text(
            "Informations: ",
            style: TextStyle(
              fontSize: 24.0,
              color: Color(0xdd212121),
              fontWeight: FontWeight.bold,
            ),
            ),
            Divider(),
            SizedBox(
              height: 20.0,
            ),
            additionalInformation("25", "2", "1000", "24.6"),
        ],
      ),
    );
  }
}
