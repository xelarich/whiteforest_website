import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page, NavigationDrawer;
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ActivityGroupPage extends StatefulWidget {
  static const routeName = '/activityGroup';
  static const indexAnchorKey = 'indexAnchorKey';
  final int? indexAnchor;

  const ActivityGroupPage({this.indexAnchor, super.key});

  @override
  State<ActivityGroupPage> createState() => _ActivityGroupPageState();
}

class _ActivityGroupPageState extends State<ActivityGroupPage> {
  late final AnchorScrollController _scrollController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = AnchorScrollController();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (widget.indexAnchor != null) {
          _scrollController.scrollToIndex(index: widget.indexAnchor!);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, ActivityGroupPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ActivityGroupPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Activité Groupe'),
        ),
      ),
    );
  }
}
