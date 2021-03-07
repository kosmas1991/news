import 'package:flutter/material.dart';
import 'dart:async';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top News'),
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return FutureBuilder(
          builder: (context, snapshot) {
            return Container(
              padding: EdgeInsets.all(5.0),
              child: snapshot.hasData
                  ? Text('I am visible')
                  : Text('I haven fetch data yet $index'),
            );
          },
          future: getFuture(),
        );
      },
      itemCount: 1000,
    );
  }

  getFuture() {
    return Future.delayed(
      Duration(seconds: 2),
        () => 'hi',
    );
  }
}
