import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'bottom_navigation_view.dart';

abstract class BottomNavigationViewControllerProtocol extends BottomNavigationViewModelProtocol {}

class BottomNavigationViewController extends StatefulWidget {
  final BottomNavigationViewControllerProtocol viewModel;
  final StatefulNavigationShell navigationShell;

  const BottomNavigationViewController({super.key, required this.viewModel, required this.navigationShell});

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationViewControllerState();
  }
}

class _BottomNavigationViewControllerState extends State<BottomNavigationViewController> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationView(
      viewModel: widget.viewModel,
      navigationShell: widget.navigationShell,
    );
  }
}
