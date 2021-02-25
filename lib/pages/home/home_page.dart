import 'package:flutter/material.dart';
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

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
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
        child: NavHeader(_opacity),
        preferredSize: Size(screenSize.width, 100),
      ),
      drawer: SideDrawer(),
      body: Stack(),
      floatingActionButton: Visibility(
        visible: _scrollPosition > _scrollController.initialScrollOffset
            ? true
            : false,
        child: FloatingActionButton(
          tooltip: 'Up',
          onPressed: () {
            _scrollController.animateTo(_scrollController.initialScrollOffset,
                duration: Duration(seconds: 1), curve: Curves.ease);
          },
          child: Icon(Icons.arrow_upward_rounded),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
