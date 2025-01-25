import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'map_state.dart'; // MapState 클래스를 import합니다.

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 지도 상태를 가져옵니다.
    final mapState = Provider.of<MapState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 여기서 네이버 지도를 표시하는 위젯을 추가합니다.
            // 예시로 위치를 표시하는 텍스트를 추가했습니다.
            Text(
              'Latitude: ${mapState.latitude}, Longitude: ${mapState.longitude}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                // 예시로 위치를 업데이트하는 버튼
                mapState.updateLocation(37.5665, 126.978); // 서울의 위도와 경도
              },
              child: const Text("Update Location"),
            ),
          ],
        ),
      ),
    );
  }
}
