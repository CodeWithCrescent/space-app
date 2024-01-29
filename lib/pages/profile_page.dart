import 'package:flutter/material.dart';
import 'package:space_app/core/constants.dart';
import 'package:space_app/core/notifier.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('images/yeah.png'),
            radius: 80,
          ),
          SizedBox(height: kdouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Crescent Geniius'),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('crescent.sambila@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('www.nunuget.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
