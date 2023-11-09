import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:whiteforest_website/component/topbar/top_bar_web.dart';

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
      appBar: const TopBarWeb(ActivityGroupPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Activité Groupe'),
        ),
      ),
    );
  }
}
