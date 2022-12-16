import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

TextStyle titleFont = const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

Widget additionalInformation(
  String wind, String humidity, String pressure, String feels_like)
{
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wind",
          style: infoFont,
        ),
        SizedBox(height: 18),
        Text(
          "Pressure", 
          style: infoFont,
        ),
      ],
    ),

    Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: titleFont,
                ),
                SizedBox(height: 18),
                Text(
                  "$pressure",
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                  style: infoFont,
                ),
                SizedBox(height: 18),
                Text(
                  "Feels like",
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: infoFont,
                ),
                SizedBox(height: 18),
                Text(
                  "$feels_like",
                  style: infoFont,
                ),
              ],
            ),
    
    //aa bb

  

    
    ],
        )
        ],
    ),
  );
}