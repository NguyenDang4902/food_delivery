import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';
import 'package:food_delivery/pages/settings_page.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() async {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 25),
          child: Column(
            children: [
              // app logo
              Icon(
                Icons.lock_open_outlined,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              Padding(
                padding: EdgeInsets.all(25),
                child: Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),

              // home list tile
              MyDrawerTile(
                  text: "HOME",
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              MyDrawerTile(
                  text: "SETTINGS",
                  icon: Icons.settings,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SettingsPage())));
                  }),
              const Spacer(),
              MyDrawerTile(text: "LOG OUT", icon: Icons.logout, onTap: logout),
              // settings list tile

              // logout list tile
            ],
          ),
        ),
      ),
    );
  }
}
