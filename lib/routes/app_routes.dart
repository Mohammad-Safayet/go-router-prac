import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_prac/pages/home_page.dart';
import 'package:go_router_prac/pages/music_details_page.dart';
import 'package:go_router_prac/pages/products_details_page.dart';
import 'package:go_router_prac/views/music_view.dart';
import 'package:go_router_prac/views/products_view.dart';
import 'package:go_router_prac/views/profile_view.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final routes = GoRouter(
  initialLocation: "/music_page",
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/music_page",
              builder: (context, state) => MusicView(),
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: "details",
                  pageBuilder: (context, state) {
                    final music = state.extra as Map<String, String>;

                    return CustomTransitionPage(
                      child: MusicDetailsPage(
                        music: music,
                      ),
                      transitionDuration: const Duration(
                        milliseconds: 900,
                      ),
                      reverseTransitionDuration: const Duration(
                        milliseconds: 900,
                      ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return Align(
                          child: FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: [
            GoRoute(
              path: "/products_page",
              builder: (context, state) => ProductsView(),
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: ":title",
                  builder: (context, state) => ProductsDetailsPage(
                    title: state.pathParameters["title"]!,
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/profile_page",
              builder: (context, state) => const ProfileView(),
            ),
          ],
        ),
      ],
    ),
  ],
);
