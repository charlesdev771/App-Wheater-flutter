import 'dart:convert';

import "package:http/http.dart" as http;
import "package:app/model/wheater_model.dart";


class WheaterApiClient{
  Future<Wheater>?  getCurrentWheaten(String? location) async{
    var endpoint = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=eb42031611601a1401c1e7423f7ce112"
);

var response = await http.get(endpoint);
var body = jsonDecode(response.body);
print(Wheater.fromJson(body).cityName);
return Wheater.fromJson(body);
  }
}