import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'services/store_db.dart';

void main() async {
  await SharedPreferencesHelper.init();
  runApp(myApp());
}

@swidget
contextButton({title, onpress}) {
  return Builder(
      builder: (BuildContext context) => MaterialButton(
            child: Text('$title'),
            onPressed: () => onpress(context),
          ));
}

@swidget
button({title, onpress}) {
  return MaterialButton(
    child: Text('$title'),
    onPressed: () => onpress(),
  );
}

@swidget
Widget myApp() {
  return MaterialApp(
    title: 'Flutter Hello World',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: myHomePage(title: 'Flutter Demo Home Page'),
  );
}

@swidget
Widget myHomePage({String? title}) {
  return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Column(children: [
        Center(
          child: Text(
            'Hello, World!',
          ),
        ),
        button(
            title: 'View Book List',
            onpress: () => {SharedPreferencesHelper.setString("test", "test")}),
        // onpress: (BuildContext context) =>
        //     {SharedPreferencesHelper.setString("test", "test")}),
      ]));
}
