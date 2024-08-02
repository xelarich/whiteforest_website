import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/data/models/menu.dart';

class TabText extends StatefulWidget {
  const TabText(
    this.name, {
    required this.isSelected,
    this.onTap,
    this.children = const [],
    super.key,
  });

  final String name;
  final Function? onTap;
  final bool isSelected;
  final List<SubMenu> children;

  @override
  TabTextState createState() => TabTextState();
}

class TabTextState extends State<TabText> {
  bool tabIsHover = false;
  bool menuIsHover = false;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
        onHover: (value) async {
          setState(() {
            tabIsHover = value;
          });
        },
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        child: _ModalEntry(
          visible: tabIsHover || menuIsHover,
          childAnchor: Alignment.topRight,
          menuAnchor: Alignment.topLeft,
          menu: MouseRegion(
            onEnter: (_) {
              setState(() {
                menuIsHover = true;
              });
            },
            onExit: (_) async {
              await Future.delayed(const Duration(milliseconds: 200));
              if (!tabIsHover) {
                if (mounted) {
                  setState(() {
                    menuIsHover = false;
                  });
                }
              }
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.children.length,
                    itemBuilder: (context, index) {
                      return MenuItemButton(
                        onPressed: () => context.go(
                          widget.children[index].routeName,
                        ),
                        child: Text(widget.children[index].name),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          child: _TabTextWidget(
            widget.name,
            isSelected: widget.isSelected,
            isHover: tabIsHover || menuIsHover,
          ),
        ),
      ),
    );
  }
}

class _TabTextWidget extends StatelessWidget {
  const _TabTextWidget(
    this.name, {
    required this.isSelected,
    required this.isHover,
  });

  final String name;
  final bool isSelected;
  final bool isHover;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            color: getColors(),
          ),
        ),
        const SizedBox(height: 8),
        Visibility(
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          visible: isHover || isSelected,
          child: Container(
            width: 100,
            height: 2,
            color: getColors(),
          ),
        ),
      ],
    );
  }

  Color getColors() => isSelected
      ? Colors.black
      : isHover
          ? Colors.brown
          : Colors.white;
}

class _ModalEntry extends StatelessWidget {
  const _ModalEntry({
    required this.menu,
    required this.visible,
    required this.menuAnchor,
    required this.childAnchor,
    required this.child,
  });

  final Widget menu;
  final bool visible;
  final Widget child;
  final Alignment menuAnchor;
  final Alignment childAnchor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: PortalTarget(
        visible: visible,
        portalFollower: menu,
        anchor: const Aligned(
          follower: Alignment.topLeft,
          target: Alignment.bottomLeft,
          widthFactor: 1.5,
        ),
        child: IgnorePointer(
          ignoring: visible,
          child: child,
        ),
      ),
    );
  }
}
