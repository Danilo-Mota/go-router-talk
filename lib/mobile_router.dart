import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routerr/bottom_navigation/di/bottom_navigation_factory.dart';
import 'package:go_routerr/change_data.dart';
import 'package:go_routerr/home.dart';
import 'package:go_routerr/profile.dart';
import 'package:go_routerr/sign_up.dart';
import 'package:go_routerr/step_one.dart';
import 'package:go_routerr/step_two.dart';

import 'login.dart';

class MobileRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

  static const String loginRoute = '/login';
  static const String signUpRoute = 'sign_up';
  static const String stepOneRoute = 'step_one';
  static const String stepTwoRoute = 'step_two';
  static const String homeRoute = '/home';
  static const String profileRoute = '/profile';
  static const String updateDataRoute = 'alterar_dados';

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: loginRoute,
    routes: <RouteBase>[
      /// Login
      GoRoute(
        path: loginRoute,
        name: loginRoute,
        builder: (_, __) => const Login(),
        routes: [
          /// Cadastro
          GoRoute(
            path: signUpRoute,
            name: signUpRoute,
            builder: (_, __) => const SignUp(),
            routes: [
              /// Step 1 do cadastro
              GoRoute(
                path: stepOneRoute,
                name: stepOneRoute,
                builder: (_, __) => const StepOne(),
              ),

              /// Step 2 do cadastro
              GoRoute(
                path: stepTwoRoute,
                name: stepTwoRoute,
                builder: (_, __) => const StepTwo(),
              ),
            ],
          ),
        ],
      ),

      //Bottom Navigation
      StatefulShellRoute.indexedStack(
        builder: (_, __, navigationShell) {
          return BottomNavigationFactory.bottomNavigation(navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              /// Home
              GoRoute(path: homeRoute, name: homeRoute, builder: (_, __) => const Home(), routes: [
                GoRoute(
                  //parentNavigatorKey: rootNavigatorKey,
                  path: 'consultas',
                  name: 'consultas',
                  builder: (_, state) {
                    //final arguments = state.extra as int;
                    return Scaffold(
                      appBar: AppBar(),
                      body: Container(
                        color: Colors.amber,
                      ),
                    );
                  },
                ),
              ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              /// Profile
              GoRoute(
                path: profileRoute,
                name: profileRoute,
                builder: (_, __) => const Profile(),
                routes: [
                  GoRoute(
                    path: updateDataRoute,
                    name: updateDataRoute,
                    builder: (_, __) => const ChangeData(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
