import 'package:app/model/wheater_model.dart';
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


const temp = 273;

class _HomePageState extends State<HomePage> {

WheaterApiClient client = WheaterApiClient();
Wheater? data;


Future<void> getData() async{
data = await client.getCurrentWheaten("Natal");
}

@override
  void initState() {
    
    client.getCurrentWheaten("Georgia");
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 78, 0, 88),
        elevation: 0.0,
        title: const Text(
          "My Wheater",
          style: TextStyle(color: Color.fromARGB(255, 180, 180, 180)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Color.fromARGB(255, 46, 46, 46),
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot)
        {
          if(snapshot.connectionState == ConnectionState.done)
          {
            return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded, "${data!.temp}K", 
          "${data!.cityName}"),
          SizedBox(
            height: 60.0,
          ),
          Text(
            "Informations: ",
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(221, 244, 65, 250),
              fontWeight: FontWeight.bold,
            ),
            ),
            Divider(),
            SizedBox(
              height: 20.0,
            ),
            additionalInformation("${data!.wind}", "${data!.humidity}", "${data!.pressure}", "${data!.feels_like}"),
        ],
      );
          }
          return Container();
        }
      )
    );
  }
}
