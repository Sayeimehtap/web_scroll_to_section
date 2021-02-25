import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class NavHeaderMobile extends StatefulWidget {
  final double opacity;

  NavHeaderMobile(this.opacity);

  @override
  _NavHeaderMobileState createState() => _NavHeaderMobileState();
}

class _NavHeaderMobileState extends State<NavHeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).bottomAppBarColor.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: Theme.of(context).primaryTextTheme.subtitle2.color,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            SizedBox(width: 3),
            Text(
              'DELAYOUT',
              style: TextStyle(
                color: Theme.of(context).primaryTextTheme.subtitle2.color,
                fontSize: 30,
                fontFamily: 'Dosis',
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            SizedBox(width: 3),
            Row(
              children: [
                IconButton(
                  icon: Theme.of(context).brightness == Brightness.dark
                      ? Icon(Icons.brightness_7)
                      : Icon(Icons.brightness_2_outlined),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Theme.of(context).primaryTextTheme.subtitle2.color,
                  onPressed: () {
                    DynamicTheme.of(context).setBrightness(
                        Theme.of(context).brightness == Brightness.dark
                            ? Brightness.light
                            : Brightness.dark);
                  },
                ),
                SizedBox(width: 3),
                InkWell(
                  onHover: (value) {
                    setState(() {});
                  },
                  onTap: () {},
                  borderRadius: BorderRadius.circular(7),
                  child: Text(
                    'TR',
                    style: TextStyle(
                        color:
                            Theme.of(context).primaryTextTheme.subtitle2.color,
                        fontSize: 15,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
