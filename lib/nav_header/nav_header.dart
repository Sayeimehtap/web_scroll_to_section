import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';
import 'package:web_scroll_to_section/utils/responsive_layout.dart';
import 'nav_header_desktop.dart';
import 'nav_header_mobile.dart';

class NavHeader extends StatefulWidget {
  final double opacity;
  final ScrollToId scrollToId;

  NavHeader(this.opacity, this.scrollToId);

  @override
  _NavHeaderState createState() => _NavHeaderState();
}

class _NavHeaderState extends State<NavHeader> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: NavHeaderDesktop(widget.opacity, widget.scrollToId),
      tablet: NavHeaderMobile(widget.opacity),
      mobile: NavHeaderMobile(widget.opacity),
    );
  }
}
