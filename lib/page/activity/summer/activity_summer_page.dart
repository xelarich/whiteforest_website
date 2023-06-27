import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';

class ActivitySummerPage extends StatefulWidget {
  static const routeName = '/activitySummer';
  static const indexAnchorKey = 'indexAnchorKey';
  final int? indexAnchor;

  const ActivitySummerPage({this.indexAnchor, Key? key}) : super(key: key);

  @override
  State<ActivitySummerPage> createState() => _ActivitySummerPageState();
}

class _ActivitySummerPageState extends State<ActivitySummerPage> {
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
      appBar: const TopBarContent(ActivitySummerPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Activité Été'),
        ),
      ),
    );
  }
}
