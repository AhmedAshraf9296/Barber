import 'package:barber/view/about_us_view.dart';
import 'package:barber/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _navigatorValue = 0;
  get navigatorValue => _navigatorValue;

  Widget _currentScreen = HomeView();
  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen =  HomeView();
          break;
        }
      case 1:
        {
          _currentScreen = AboutUsView();
          break;
        }
      case 2:
        {
          _currentScreen = AboutUsView();
          break;
        }
    }
    update();
  }
}
