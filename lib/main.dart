import 'package:flutter/material.dart';

void main() {
  Widget blueDivider = Divider(
      thickness: 4,
      color: Colors.black
  );
  Widget redDivider = Divider(
      thickness: 4,
      color: Colors.pink
  );
  runApp(
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: Text('409631115_王柏捷')),
            body: ListView.separated(
                itemCount: 8,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    leading: Icon(
                        IconData(59677 + i, fontFamily: 'MaterialIcons')
                    ),
                    title: Text('$i'),
                    subtitle: Text('圖示 ${59677 + i}'),
                  );
                },
                separatorBuilder: (BuildContext context, int i) {
                  return i % 2 == 0 ? blueDivider : redDivider;
                }
            ),
          )
      )
  );
}