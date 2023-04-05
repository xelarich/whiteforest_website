import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/menu.dart';
import 'package:whiteforest_website/provider/navigator_provider.dart';

class TabText extends ConsumerStatefulWidget {
  TabText(this.text, {Key? key, required this.menu, required this.onTap})
      : super(key: key);
  final String text;
  final Menu menu;
  Function onTap;

  @override
  TabTextState createState() => TabTextState();
}

class TabTextState extends ConsumerState<TabText> {
  bool isHover = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isSelected =
        ref
            .watch(navigatorProvider)
            .selectedIndex + 1 == widget.menu.id;

    return InkWell(
      onTap: () {
        widget.onTap();
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text.toUpperCase(),
              style: TextStyle(
                fontSize: 16,
                color: isHover ? Colors.black : Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: isHover || isSelected,
              child: Container(
                height: 2,
                width: 100,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
