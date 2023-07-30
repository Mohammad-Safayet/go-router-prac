import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  void changeIndex(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedFontSize: 0,
      selectedFontSize: 0,
      selectedItemColor: Theme.of(context).colorScheme.onPrimary,
      unselectedItemColor: Theme.of(context).colorScheme.onPrimaryContainer,
      onTap: (value) {
        debugPrint("$value");
        changeIndex(value);
      },
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      currentIndex: index,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "home",
          icon: Container(
            margin: EdgeInsets.zero,
            width: double.infinity,
            height: kBottomNavigationBarHeight,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12.0),
              ),
              color: index == 0
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primaryContainer,
            ),
            child: const Icon(
              Icons.home_outlined,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "play",
          icon: Container(
            margin: EdgeInsets.zero,
            width: double.infinity,
            height: kBottomNavigationBarHeight,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0)),
              color: index == 1
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primaryContainer,
            ),
            child: const Icon(
              Icons.airplay,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "person",
          icon: Container(
            margin: EdgeInsets.zero,
            width: double.infinity,
            height: kBottomNavigationBarHeight,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
              ),
              color: index == 2
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primaryContainer,
            ),
            child: const Icon(
              Icons.person_4,
            ),
          ),
        ),
      ],
    );
  }
}
