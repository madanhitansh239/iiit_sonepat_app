import 'package:flutter/material.dart';

class HomeScreenButton extends StatelessWidget {
  HomeScreenButton({this.icon, this.text, this.pageToOpen});
  final IconData icon;
  final String text;
  final Widget pageToOpen;
  @override
  Widget build(BuildContext context) {
    return Container (
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center (
          child: Column (
            children: <Widget>[
                ClipOval(
                  child: Center(
                    child: Container(
                      color: Color.fromRGBO(46, 49, 61, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              iconSize: 40,
                              color: Color.fromRGBO(199, 199, 199, 1),
                              icon: Icon(icon),
                              splashColor: Color.fromRGBO(10, 71, 131, 1),
                              highlightColor: Color.fromRGBO(10, 71, 131, 1),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => pageToOpen)
                                );
                              },
                            );
                          }
                        ),
                        ),
                      ),
                    ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Text(text, style: TextStyle(fontSize: 16, color: Color.fromRGBO(199, 199, 199, 1)),),
              )
            ],
          )
        ),
      ),
    );
  }
}