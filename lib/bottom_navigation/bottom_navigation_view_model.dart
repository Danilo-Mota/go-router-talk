import 'bottom_navigation_view_controller.dart';

class BottomNavigationViewModel extends BottomNavigationViewControllerProtocol {
  int _currentIndex = 0;

  @override
  int get currentIndex => _currentIndex;

  @override
  void didTapSelectedIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
