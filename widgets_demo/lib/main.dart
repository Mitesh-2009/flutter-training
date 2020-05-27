import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_solid),
            title: Text('Articles'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.eye_solid),
            title: Text('Views'),
          ),
        ],
      ),
      tabBuilder: (context, i){
        return CupertinoTabView(
          builder: (context){
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: (i == 0) ? Text('Articels') : Text('Views'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: Text(
                    'This is tab #$i',
                    style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
                  ),
                  onPressed: (){
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder:  (context) {
                        return DetailScreen(i == 0 ? 'Articels' : 'Views');
                      })
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class DetailScreen extends StatefulWidget {
  const DetailScreen(this.topic);

  final String topic;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Details'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'A switch'
                    ),
                  ),
                  CupertinoSwitch(
                    value: switchValue,
                    onChanged: (value){
                      setState(() {
                        switchValue = value;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}





