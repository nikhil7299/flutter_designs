import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TravelHome extends ConsumerStatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const TravelHome(),
      );
  const TravelHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TravelHomeState();
}

class _TravelHomeState extends ConsumerState<TravelHome> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
    // final height = size.height;
    // final width = size.width;
    final assets = [
      "assets/wall1.jpg",
      "assets/wall2.jpg",
      "assets/wall3.jpg",
      "assets/wall4.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Global Odyssey"),
      ),
      body: ListView(
        children: [
          CustomGallery(assets: assets),
        ],
      ),
    );
  }
}

class CustomGallery extends StatefulWidget {
  final List<String> assets;
  const CustomGallery({super.key, required this.assets});

  @override
  State<CustomGallery> createState() => _CustomGalleryState();
}

class _CustomGalleryState extends State<CustomGallery> {
  ValueNotifier<int> index = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    // final height = size.height;
    final width = size.width;
    return ValueListenableBuilder(
      valueListenable: index,
      builder: (context, value, child) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: width * 0.05),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width),
                child: Image.asset(
                  widget.assets[value],
                  fit: BoxFit.cover,
                  height: width * 0.90,
                ),
              ),
            ),
            Positioned(
              bottom: width * 0.2,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width * 0.1),
                ),
                child: CircleAvatar(
                  radius: width * 0.08,
                  backgroundImage: AssetImage(
                    widget.assets[value],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: width * 0.09,
              right: width * 0.13,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width * 0.1),
                ),
                child: CircleAvatar(
                  radius: width * 0.065,
                  backgroundImage: AssetImage(
                    widget.assets[value],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: width * 0.02,
              right: width * 0.25,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width * 0.1),
                ),
                child: CircleAvatar(
                  radius: width * 0.05,
                  backgroundImage: AssetImage(
                    widget.assets[value],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
