import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Conut.dart';
import 'map_state.dart'; // MapState 클래스를 import합니다.
import 'map_widget.dart'; // MapWidget 클래스를 import합니다.

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Count",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Consumer<Counter>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: TextStyle(fontSize: 40),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<Counter>(context, listen: false).increment();
                  },
                  child: const Text("+"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<Counter>(context, listen: false).decrement();
                  },
                  child: const Text("-"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // MapWidget으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapWidget()),
                );
              },
              child: const Text("Go to Map"),
            ),
          ],
        ),
      ),
    );
  }
}
