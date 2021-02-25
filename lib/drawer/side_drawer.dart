import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class SideDrawer extends StatefulWidget {
  final ScrollToId scrollToId;

  SideDrawer(this.scrollToId);

  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  widget.scrollToId.animateTo('home',
                      duration: Duration(seconds: 1), curve: Curves.decelerate);
                  Navigator.pop(context);
                },
                child: Text(
                  'HOME',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  widget.scrollToId.animateTo('about-us',
                      duration: Duration(seconds: 1), curve: Curves.decelerate);
                  Navigator.pop(context);
                },
                child: Text(
                  'ABOUT US',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  widget.scrollToId.animateTo('services',
                      duration: Duration(seconds: 1), curve: Curves.decelerate);
                  Navigator.pop(context);
                },
                child: Text(
                  'SERVICES',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  widget.scrollToId.animateTo('products',
                      duration: Duration(seconds: 1), curve: Curves.decelerate);
                  Navigator.pop(context);
                },
                child: Text(
                  'PRODUCTS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  widget.scrollToId.animateTo('team',
                      duration: Duration(seconds: 1), curve: Curves.decelerate);
                  Navigator.pop(context);
                },
                child: Text(
                  'TEAM',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey[400],
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  widget.scrollToId.animateTo('contact',
                      duration: Duration(seconds: 1), curve: Curves.decelerate);
                  Navigator.pop(context);
                },
                child: Text(
                  'CONTACT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2021 | SCROLL',
                    style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
