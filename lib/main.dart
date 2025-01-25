import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Conut.dart';
import 'map_state.dart'; // MapState 클래스를 import합니다.
import 'your_widget.dart'; // YourWidget 클래스를 import합니다.

void main() {
  runApp(
    MultiProvider( // 여러 Provider를 사용할 때 MultiProvider 사용
      providers: [
        ChangeNotifierProvider(create: (context) => Counter()),
        ChangeNotifierProvider(create: (context) => MapState()), // MapState 추가
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YourWidget(),
    );
  }
}
