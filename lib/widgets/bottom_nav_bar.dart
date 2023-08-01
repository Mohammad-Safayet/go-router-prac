import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
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
      onTap: _onTap,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      currentIndex: navigationShell.currentIndex,
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
              color: navigationShell.currentIndex == 0
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
              color: navigationShell.currentIndex == 1
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
              color: navigationShell.currentIndex == 2
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
