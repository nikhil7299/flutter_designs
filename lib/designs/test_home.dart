import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_designs/animations/scale_fade_bounce_list.dart';
import 'package:flutter_designs/animations/fade_in_slide.dart';
import 'package:flutter_designs/text_style_ext.dart';
import 'package:iconly/iconly.dart';

class TestHome extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const TestHome(),
      );
  const TestHome({super.key});

  @override
  State<TestHome> createState() => _TestHomeState();
}

class _TestHomeState extends State<TestHome> {
  Color borderColor = Colors.grey;
  int currentIndex = 0;
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: FadeInSlide(
          direction: FadeSlideDirection.ttb,
          duration: 1,
          curve: Curves.bounceOut,
          child: Text(
            "Lessons",
            style: context.tl?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          FadeInSlide(
            direction: FadeSlideDirection.ttb,
            duration: 1,
            curve: Curves.bounceOut,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "1",
                    style: context.tm,
                  ),
                  const Icon(
                    CupertinoIcons.flame,
                    color: Colors.orange,
                  )
                ],
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.black,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: FadeInSlide(
              direction: FadeSlideDirection.ttb,
              duration: 1,
              curve: Curves.bounceOut,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilledButton(
                        style: FilledButton.styleFrom(
                          fixedSize: const Size.fromHeight(20),
                          backgroundColor:
                              const Color.fromARGB(255, 126, 71, 221),
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text("Level  A1"),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_circle_down,
                              size: 15,
                            )
                          ],
                        )),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      child: const Text("10:00"),
                    ),
                  ],
                ),
              ),
            )),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        itemCount: 15,
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (context, index) {
          return FadeInSlide(
            duration: .5 + (index * 0.02),
            direction: FadeSlideDirection.ltr,
            child: ListTile(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  if (borderColor == Colors.grey) {
                    borderColor = Colors.green;
                  } else {
                    borderColor = Colors.grey;
                  }
                });
              },
              // selectedColor: Colors.green.shade200,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              leading: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: currentIndex == index ? borderColor : Colors.grey,
                      width: 2,
                    )),
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 126, 71, 221),
                  child: Text(
                    "A",
                    style: context.ptl?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              title: Text(
                "Warm up : reasons to learn languages",
                style: context.tm?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Lessons 1"),
            ),
          );
        },
      ),
      bottomNavigationBar: FadeInSlide(
        direction: FadeSlideDirection.btt,
        duration: 1,
        curve: Curves.bounceOut,
        child: NavigationBar(
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {
              navIndex = index;
            });
          },
          // indicatorColor: AppColors.seedColor.withOpacity(0.6),
          selectedIndex: navIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.message),
              icon: Icon(IconlyLight.message),
              label: "Lessons",
            ),
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.graph),
              icon: Icon(IconlyLight.graph),
              label: "Results",
            ),
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.profile),
              icon: Icon(IconlyLight.profile),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
