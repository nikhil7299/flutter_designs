import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/test_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Designs"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          // ListTile(
          //   onTap: () => Navigator.push(context, TravelHome.route()),
          //   style: ListTileStyle.list,
          //   title: const Text("Travel Design"),
          //   tileColor: Colors.grey.shade200,
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          //   leading: const Text(
          //     "1. ",
          //     textAlign: TextAlign.center,
          //     style: TextStyle(fontSize: 18),
          //   ),
          //   trailing: const Icon(CupertinoIcons.arrow_right_circle),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          ListTile(
            onTap: () => Navigator.push(context, TestHome.route()),
            style: ListTileStyle.list,
            title: const Text("Test Home"),
            tileColor: Colors.grey.shade200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            leading: const Text(
              "1. ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            trailing: const Icon(CupertinoIcons.arrow_right_circle),
          ),
        ],
      ),
    );
  }
}
