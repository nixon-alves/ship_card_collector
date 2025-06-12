import 'package:colecionador_de_cartas/components/ship_cards.dart';
import 'package:colecionador_de_cartas/models/ship.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAEBD7),
      appBar: AppBar(
        title: Text("Navios Afundados"),
        backgroundColor: Color(0xFF6B4C3B),
      ),
      body: FutureBuilder<List<Ship>>(
        future: loadShip(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Erro ao carregar dados"));
          } else {
            final ships = snapshot.data!;
            return ListView.builder(
              itemCount: ships.length,
              itemBuilder: (context, index) {
                final ship = ships[index];
                return shipCards(context, ship);
              },
            );
          }
        },
      ),
    );
  }
}
