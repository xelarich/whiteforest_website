import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/tab_text.dart';

class MyMenuBar extends StatefulWidget implements PreferredSizeWidget {
  final double opacity;

  const MyMenuBar(this.opacity, {super.key});

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);
}

class _MyMenuBarState extends State<MyMenuBar> {
  MenuController _menuController = MenuController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade800.withOpacity(widget.opacity),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              left: 64,
              top: 8,
              bottom: 8,
            ),
            child: Image.asset(
              'assets/images/white_forest_logo.png',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                color: Colors.red,
                child: MenuAnchor(
                  controller: _menuController,
                  style: const MenuStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.white),
                      padding: MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.all(8))),
                  menuChildren: _getMenus(),
                  builder: (context, controller, child) {
                    return Column(
                      children: [
                        Expanded(
                          child: TabText('Accueil', onHover: () {
                            if (controller.isOpen) {
                              Future.delayed(const Duration(milliseconds: 200),
                                  () {
                                controller.close();
                              });
                            } else {
                              controller.open();
                            }
                          }),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(16),
              ),
              child: Row(
                children: const [
                  Text(
                    "Réserver",
                    style: TextStyle(color: Colors.white70, fontSize: 22),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.white70,
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getMenus() {
    return [
      MenuItemButton(
        onHover: (_) {
          _menuController.open();
        },
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Hiver",
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      )
    ];
  }
}
