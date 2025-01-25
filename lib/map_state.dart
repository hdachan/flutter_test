import 'package:flutter/material.dart';

class MapState with ChangeNotifier {
  // 현재 위치
  double _latitude = 37.5665; // 기본 위도 (서울)
  double _longitude = 126.978;

  double get latitude => _latitude;
  double get longitude => _longitude;

  // 위치 업데이트 메서드
  void updateLocation(double latitude, double longitude) {
    _latitude = latitude;
    _longitude = longitude;
    notifyListeners();
  }
}
