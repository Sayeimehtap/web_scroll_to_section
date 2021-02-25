import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';
import 'package:web_scroll_to_section/drawer/side_drawer.dart';
import 'package:web_scroll_to_section/nav_header/nav_header.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;
  ScrollToId scrollToId;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    scrollToId = ScrollToId(scrollController: _scrollController);
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition + 200 <= screenSize.height * 0.40
        ? (_scrollPosition + 200) / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: NavHeader(_opacity, scrollToId),
        preferredSize: Size(screenSize.width, 100),
      ),
      drawer: SideDrawer(scrollToId),
      body: VsScrollbar(
        controller: _scrollController,
        scrollDirection: Axis.vertical, // @REQUIRED
        allowDrag:
            true, // allows to scroll the list using scrollbar [default : true]
        color: Colors.blueGrey[600], // sets color of vsScrollBar
        radius: 7, // sets radius of vsScrollBar
        thickness: 7, // sets thickness of vsScrollBar
        isAlwaysShown: false, // default false
        // sets scrollbar fade animation duration [ Default : Duration(milliseconds: 300)]
        scrollbarFadeDuration: Duration(milliseconds: 500),
        // Fades scrollbar after certain duration [ Default : Duration(milliseconds: 600)]
        scrollbarTimeToFade: Duration(milliseconds: 800),
        child: InteractiveScrollViewer(
          scrollToId: scrollToId,
          children: <ScrollContent>[
            ScrollContent(
              id: 'home',
              child: Container(
                width: screenSize.width,
                child: Column(
                  children: [
                    SizedBox(height: 120),
                    Text(
                      'HOME',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(height: 1000)
                  ],
                ),
              ),
            ),
            ScrollContent(
              id: 'about-us',
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 120),
                    Text(
                      'ABOUT US',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(height: 1200)
                  ],
                ),
              ),
            ),
            ScrollContent(
              id: 'services',
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 120),
                    Text(
                      'SERVICES',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(height: 3000)
                  ],
                ),
              ),
            ),
            ScrollContent(
              id: 'products',
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 120),
                    Text(
                      'PRODUCTS',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(height: 2000)
                  ],
                ),
              ),
            ),
            ScrollContent(
              id: 'team',
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 120),
                    Text(
                      'TEAM',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(height: 3000)
                  ],
                ),
              ),
            ),
            ScrollContent(
              id: 'contact',
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 120),
                    Text(
                      'CONTACT',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(height: 1000)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Visibility(
        visible: _scrollPosition > _scrollController.initialScrollOffset
            ? true
            : false,
        child: FloatingActionButton(
          tooltip: 'Up',
          onPressed: () {
            scrollToId.animateTo('home',
                duration: Duration(seconds: 1), curve: Curves.ease);
          },
          child: Icon(Icons.arrow_upward_rounded),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
