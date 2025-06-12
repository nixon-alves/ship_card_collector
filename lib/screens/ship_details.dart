import 'package:flutter/material.dart';

class ShipDetails extends StatelessWidget {
  final String name;
  final String travelRoute;
  final String sinkingDate;
  final String picShip;
  final String cause;
  final String sinkingTime;
  final String deaths;

  const ShipDetails(
    this.name,
    this.travelRoute,
    this.sinkingDate,
    this.picShip,
    this.cause,
    this.sinkingTime,
    this.deaths, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),
          backgroundColor: Color(0xFF6B4C3B)),
      backgroundColor: Color(0xFFFAEBD7),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 12,
            child: Image.asset(picShip, fit: BoxFit.cover),
          ),
          SizedBox(height: 30),
          infoLine("Rota", travelRoute),
          infoLine("Data de Afundamento", sinkingDate),
          infoLine("Motivo do Naufrágio", cause),
          infoLine("Tempo até afundar", sinkingTime),
          infoLine("Mortes", deaths),
        ],
      ),
    );
  }
}

Widget infoLine(String title, String value) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 10),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(alignment: Alignment.centerLeft,
            child: Text(
              "$title: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "monospace",
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Text(
            value,
            textAlign: TextAlign.start,
            style: TextStyle(fontFamily: "monospace",),
          ),
        ],
      ),
    ),
  );
}
