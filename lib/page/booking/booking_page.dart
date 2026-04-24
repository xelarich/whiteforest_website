import 'dart:ui_web' as ui;

import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:web/web.dart' hide Text;
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/shared/utils.dart';

class BookingPage extends StatefulWidget {
  static const routeName = '/reserver';

  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  static const _viewType = 'booking-iframe';
  static bool _registered = false;
  HTMLIFrameElement? _iframe;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (!_registered) {
      ui.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
        final iframe = HTMLIFrameElement()
          ..src = 'booking_widget.html'
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%';
        _iframe = iframe;
        return iframe;
      });
      _registered = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, BookingPage.routeName),
      key: _key,
      drawer: const DrawerMobile(BookingPage.routeName),
      onDrawerChanged: (isOpen) {
        _iframe?.style.pointerEvents = isOpen ? 'none' : 'auto';
      },
      body: const HtmlElementView(viewType: _viewType),
    );
  }
}