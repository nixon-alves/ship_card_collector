import 'package:colecionador_de_cartas/models/ship.dart';
import 'package:colecionador_de_cartas/screens/ship_details.dart';
import 'package:flutter/material.dart';

Widget shipCards(
  BuildContext context,
  Ship ship,
) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => ShipDetails(
                    ship.name,
                    ship.travelRoute,
                    ship.sinkingDate,
                    ship.picShip,
                    ship.cause,
                    ship.sinkingTime,
                    ship.deaths,
                  ),
            ),
          );
        },
        highlightColor: Colors.greenAccent,
        child: Container(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                ship.name,
                style: TextStyle(
                  fontFamily: "Courier New",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Container(
                color: Colors.grey,
                width: 250,
                height: 120,
                child: Image.asset(ship.picShip, fit: BoxFit.cover),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    ),
  );
}
