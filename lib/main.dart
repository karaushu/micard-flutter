import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeColor(),
    );
  }
}

class ThemeColor extends StatefulWidget {
  const ThemeColor({Key? key}) : super(key: key);

  @override
  _ThemeColorState createState() => _ThemeColorState();
}

class _ThemeColorState extends State<ThemeColor> {
  var themeColor = Colors.teal;
  static const imageURL =
      'https://images.unsplash.com/photo-1558227108-83a15ddbbb15';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: themeColor.shade300,
                radius: 50,
                backgroundImage: NetworkImage(imageURL),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 6),
                child: Text(
                  'Strivia Unknownia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'AmaticSC',
                  ),
                ),
              ),
              Text(
                'Unknown Developer'.toUpperCase(),
                style: TextStyle(
                  color: themeColor.shade100,
                  letterSpacing: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 160,
                child: Divider(
                  color: themeColor.shade100,
                ),
              ),
              ListItem(
                icon: Icons.phone,
                themeColor: themeColor,
                text: '+380 96 121 3983',
              ),
              ListItem(
                icon: Icons.mail,
                themeColor: themeColor,
                text: 'unknown@gmail.com',
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: themeColor.shade700,
        title: Text('MiCard'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            themeColor = themeColor == Colors.teal ? Colors.grey : Colors.teal;
          });
        },
        backgroundColor: themeColor.shade100,
        child: Icon(
          Icons.change_circle,
          color: themeColor.shade700,
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final themeColor;
  final icon;
  final text;

  const ListItem({
    Key? key,
    this.themeColor = Colors.teal,
    this.icon,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: themeColor.shade100,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: themeColor.shade800,
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: themeColor.shade800,
              ),
            ),
          )
        ],
      ),
    );
  }
}
