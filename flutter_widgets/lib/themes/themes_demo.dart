import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/themes/themes_notifier.dart';
import 'package:provider/provider.dart';

//Note: Use code below to just run this demo
void main() => runApp(ChangeNotifierProvider<ThemesNotifier>(
      child: ThemesDemo(),
      builder: (BuildContext context) {
        return ThemesNotifier();
      },
    ));

class ThemesDemo extends StatefulWidget {
  @override
  _ThemesDemoState createState() => _ThemesDemoState();
}

class _ThemesDemoState extends State<ThemesDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ThemesNotifier>(context).currentThemeData,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Themes Demo"),
          ),
          body: body(),
        ));
  }

  Widget body() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Image.asset(
              "assets/images/sea-rocks.jpg",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Beautiful Ocean",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            child: Text("Switch Theme"),
            onPressed: () {
              Provider.of<ThemesNotifier>(context).switchTheme();
            },
          ),
        ],
      ),
    );
  }
}
