import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class NavHeaderDesktop extends StatefulWidget {
  final double opacity;

  NavHeaderDesktop(this.opacity);

  @override
  _NavBarDesktopState createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavHeaderDesktop> {
  ScrollController scrollController = ScrollController();
  int currentCategoryIndex = 0;
  ScrollController headerScrollController = ScrollController();

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool _isProcessing = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      final index = scrollController.offset;

      headerScrollController.animateTo(
          index * (MediaQuery.of(context).size.width * 0.2),
          duration: Duration(seconds: 1),
          curve: Curves.decelerate);
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Theme.of(context).bottomAppBarColor.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'SCROLL',
              style: TextStyle(
                color: Theme.of(context).primaryTextTheme.subtitle2.color,
                fontSize: 30,
                fontFamily: 'Dosis',
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'HOME',
                            style: TextStyle(
                                color: _isHovering[0]
                                    ? const Color(0xFF01B1D7)
                                    : Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2
                                        .color,
                                fontSize: 15,
                                fontFamily: 'Dosis',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'ABOUT US',
                            style: TextStyle(
                                color: _isHovering[1]
                                    ? const Color(0xFF01B1D7)
                                    : Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2
                                        .color,
                                fontSize: 15,
                                fontFamily: 'Dosis',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[3] = true : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'SERVICES',
                            style: TextStyle(
                                color: _isHovering[3]
                                    ? const Color(0xFF01B1D7)
                                    : Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2
                                        .color,
                                fontSize: 15,
                                fontFamily: 'Dosis',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[4] = true : _isHovering[4] = false;
                      });
                    },
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'PRODUCTS',
                            style: TextStyle(
                                color: _isHovering[4]
                                    ? const Color(0xFF01B1D7)
                                    : Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2
                                        .color,
                                fontSize: 15,
                                fontFamily: 'Dosis',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[5] = true : _isHovering[5] = false;
                      });
                    },
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'TEAM',
                            style: TextStyle(
                                color: _isHovering[5]
                                    ? const Color(0xFF01B1D7)
                                    : Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2
                                        .color,
                                fontSize: 15,
                                fontFamily: 'Dosis',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[6] = true : _isHovering[6] = false;
                      });
                    },
                    onTap: () {},
                    hoverColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'CONTACT',
                            style: TextStyle(
                                color: _isHovering[6]
                                    ? const Color(0xFF01B1D7)
                                    : Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2
                                        .color,
                                fontSize: 15,
                                fontFamily: 'Dosis',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
