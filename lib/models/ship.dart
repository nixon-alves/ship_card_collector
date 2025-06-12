import 'dart:convert';
import 'package:flutter/services.dart';

class Ship {
  final String name;
  final String travelRoute;
  final String sinkingDate;
  final String picShip;
  final String cause;
  final String sinkingTime;
  final String deaths;

  const Ship(
    this.name,
    this.travelRoute,
    this.sinkingDate,
    this.picShip,
    this.cause,
    this.sinkingTime,
    this.deaths);

  factory Ship.fromJson(Map<String, dynamic> json){
    return Ship(
      json["name"],
      json["travelRoute"],
      json["sinkingDate"],
      json["picShip"],
      json["cause"],
      json["sinkingTime"],
      json["deaths"]
    );
  }
}



Future<List<Ship>> loadShip() async {
  final response = await rootBundle.loadString('assets/data/ships.json');
  final List<dynamic> data = jsonDecode(response);

  return data.map<Ship>((json) => Ship.fromJson(json)).toList();
}
