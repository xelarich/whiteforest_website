import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/menu.dart';
import 'package:whiteforest_website/provider/navigator_provider.dart';

class TabText extends ConsumerStatefulWidget {
  const TabText(this.text, {Key? key, required this.menu, required this.onTap})
      : super(key: key);
  final String text;
  final Menu menu;
  final Function onTap;

  @override
  TabTextState createState() => TabTextState();
}

class TabTextState extends ConsumerState<TabText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final isSelected =
        ref.watch(navigatorProvider).selectedIndex + 1 == widget.menu.id;

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
                color: getColors(isSelected),
              ),
            ),
            const SizedBox(height: 12),
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: isHover || isSelected,
              child: Container(
                width: 100,
                height: 2,
                color: getColors(isSelected),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getColors(bool isSelected) => isSelected
      ? Colors.black
      : isHover
          ? Colors.brown
          : Colors.white;
}
