import 'package:flutter/material.dart';
import 'package:mobile_shop/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 203, 236, 241), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)));

    return Drawer(
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(
            padding: const EdgeInsets.only(left: 32, top: 16),
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.fromLTRB(0, 16, 16, 8),
                height: 170,
                child: Stack(
                  children: [
                    const Positioned(
                        top: 8,
                        left: 0,
                        child: Text(
                          'Ferroca\nClothing',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        left: 0,
                        bottom: 0,
                        child: Column(
                          children: [
                            const Text(
                              'Ola,',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              child: Text(
                                'Entre ou cadastre-se >',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {},
                            )
                          ],
                        ))
                  ],
                ),
              ),
              const Divider(),
              const DrawerTile(icon: Icons.home, text: 'Inicio'),
              const DrawerTile(icon: Icons.list, text: 'Produtos'),
              const DrawerTile(icon: Icons.location_on, text: 'Lojas'),
              const DrawerTile(
                  icon: Icons.playlist_add_check, text: 'Meus pedidos'),
            ],
          )
        ],
      ),
    );
  }
}
