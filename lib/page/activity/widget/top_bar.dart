import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, required this.scrollController, this.tabController})
      : super(key: key);

  final AnchorScrollController scrollController;
  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.brown.shade100,
      child: Center(
        child: TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          padding: const EdgeInsets.all(8),
          indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          indicator: BoxDecoration(
            color: Colors.brown.shade50,
            border: Border.all(width: 2, color: Colors.black),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).dividerColor,
                  offset: const Offset(1, 1),
                  blurRadius: 3,
                  spreadRadius: 2)
            ],
            borderRadius: BorderRadius.circular(4),
          ),
          tabs: [
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 100,
              height: 40,
              child: const Center(
                child: Text("Hiver"),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 100,
              height: 40,
              child: const Center(
                child: Text("Été"),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 100,
              height: 40,
              child: const Center(
                child: Text(
                  "Groupe",
                ),
              ),
            ),
          ],
          controller: tabController,
          onTap: (index) {
            scrollController.scrollToIndex(index: index);
          },
        ),
      ),
    );
  }
}
