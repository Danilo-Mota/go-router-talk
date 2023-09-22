import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../bottom_navigation_view_controller.dart';
import '../bottom_navigation_view_model.dart';

class BottomNavigationFactory {
  static const String route = '/bottomNavigation';

  static StatefulWidget bottomNavigation(StatefulNavigationShell navigationShell) {
    final viewModel = BottomNavigationViewModel();
    return BottomNavigationViewController(
      viewModel: viewModel,
      navigationShell: navigationShell,
    );
  }
}
