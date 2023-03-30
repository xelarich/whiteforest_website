import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/provider/conf_provider.dart';
import 'package:whiteforest_website/provider/navigator_provider.dart';
import 'package:whiteforest_website/shared/tab_text.dart';

class TopBarContents extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final double opacity;

  const TopBarContents(this.opacity, {super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 80);
}

class _TopBarContentsState extends ConsumerState<TopBarContents> {
  final GlobalKey _globalKey = GlobalKey();
  OverlayEntry? entry;
  bool _menuHover = false;
  ScrollController controller = ScrollController();
  bool allowAddEntry = true;

  final List<String> menuList = [
    'Accueil',
    'Actualité',
    'Activité',
    "L'équipe",
    'Le chenil',
    'Contact'
  ];

  late Size screenSize;

  @override
  void initState() {
    screenSize = ref.read(confProvider).screenSize;

    entry = _overlayEntry();
    entry?.addListener(() {
      allowAddEntry = !allowAddEntry;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 10),
      child: Container(
        color: Colors.grey.shade900.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/white_forest_logo.png',
                height: kToolbarHeight + 20,
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TabText(
                        'Accueil',
                        onHover: () {},
                      ),
                      MouseRegion(
                        onEnter: (event) {
                          debugPrint(
                              'OnEnterHeader $_menuHover ${(entry != null)} ');
                          if (allowAddEntry && !_menuHover) {
                            _menuHover = true;
                            _addOverlay(entry!);
                          }
                        },
                        onExit: (event) {
                          debugPrint(
                              'OnExitHeader $_menuHover ${(entry != null)} ');
                          _menuHover = false;
                          Future.delayed(const Duration(milliseconds: 200), () {
                            if (!_menuHover && entry != null) {
                              if (!entry!.mounted) {
                                return;
                              } else {
                                entry?.remove();
                              }
                            }
                          });
                        },
                        child: TabText(
                          'Activité',
                          key: _globalKey,
                          onHover: () {},
                        ),
                      ),
                      TabText(
                        'Le chenil',
                        onHover: () {},
                      ),
                      TabText(
                        "L'équipe",
                        onHover: () {},
                      ),
                      TabText(
                        'Contact',
                        onHover: () {},
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
                            style:
                                TextStyle(color: Colors.white70, fontSize: 22),
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
            ],
          ),
        ),
      ),
    );
  }

  OverlayEntry _overlayEntry() {
    return OverlayEntry(builder: (BuildContext overlayContext) {
      final offset = _getPosition();
      return Positioned(
        top: 108,
        left: offset.dx - 10,
        child: Material(
          color: Colors.transparent,
          child: MouseRegion(
            onEnter: (_) {
              _menuHover = true;
              debugPrint('OnEnterTile $_menuHover ${(entry != null)} ');
            },
            onExit: (_) {
              debugPrint('OnExitTile $_menuHover ${(entry != null)} ');
              _menuHover = false;
              Future.delayed(const Duration(milliseconds: 100), () {
                if (!_menuHover && entry != null) {
                  if (!entry!.mounted) {
                    return;
                  } else {
                    entry?.remove();
                  }
                }
              });
            },
            child: SizedBox(
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: Container(
                      color: Colors.black,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Hiver",
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Container(
                      color: Colors.black,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Été",
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Container(
                      color: Colors.black,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Intersaison",
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

/*  List<Widget> _buildListItems() {
    final listItems = <Widget>[];
    for (int i = 0; i < widget.menuTiles.length; ++i) {
      listItems.add(
        FutureBuilder(
            future: Future.delayed(Duration(milliseconds: (i * 200))),
            builder: (context, value) {
              if (value.connectionState == ConnectionState.done) {
                return TweenAnimationBuilder(
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(milliseconds: 200),
                  onEnd: () {
                    if (entry != null && !_menuHover[widget.index]) {
                      if (!entry!.mounted) {
                        return;
                      } else {
                        entry!.remove();
                      }
                    }
                  },
                  tween: _menuHover[widget.index]
                      ? Tween<double>(begin: 1, end: 0)
                      : Tween<double>(begin: 0, end: 1),
                  builder: (_, double value, _child) {
                    return _defineAnimationType(
                        widget.animationType, value, _child, i);
                  },
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("You Tapped On ${widget.menuTiles[i]}"),
                          duration: const Duration(milliseconds: 500)));
                    },
                    child: SizedBox(
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: widget.menuBoxDecoration,
                        margin: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            widget.menuTiles[i].name ?? '',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: widget.menuTextSize,
                                fontWeight: FontWeight.w500,
                                color: widget.menuTextColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
              return Container();
            }),
      );
    }
    return listItems;
  }*/

  _addOverlay(OverlayEntry entry) {
    Overlay.of(context)?.insert(entry);
  }

  Offset _getPosition() {
    final renderBox =
        _globalKey.currentContext!.findRenderObject() as RenderBox;
    return renderBox.localToGlobal(Offset.zero);
  }
}
