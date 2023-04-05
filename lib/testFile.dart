import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MenuBarApp());

class MyMenuBar extends StatefulWidget implements PreferredSizeWidget {
  const MyMenuBar({super.key});

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyMenuBarState extends State<MyMenuBar> {
  final MenuController _menuController = MenuController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuAnchor(
          controller: _menuController,
          style: const MenuStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(8))),
          menuChildren: _getMenus(),
          builder: (context, controller, child) {
            return TextButton(
                child: Text("Home"),
                onPressed: () {},
                onHover: (_) {
                  if (controller.isOpen) {
                    Future.delayed(const Duration(milliseconds: 200), () {
                      controller.close();
                    });
                  } else {
                    controller.open();
                  }
                });
          },
        ),
      ],
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
            "About",
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

class MenuBarApp extends StatelessWidget {
  const MenuBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(appBar: MyMenuBar()),
    );
  }
}
