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
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withValues(alpha: 0.15),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          child: Text(
                            widget.children[index].name,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Colors.brown.shade800,
                            ),
                          ),
                        ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              fontSize: 16,
              color: _getColor(),
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            ),
            child: Text(
              name,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 6),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: isHover || isSelected ? 30 : 0,
            height: 3,
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xFFD4A24E)
                  : isHover
                      ? Colors.brown.shade600
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }

  Color _getColor() => isSelected
      ? Colors.brown.shade900
      : isHover
          ? Colors.brown.shade700
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