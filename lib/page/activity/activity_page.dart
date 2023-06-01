import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/footer/footer_content.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';
import 'package:whiteforest_website/page/activity/widget/top_bar.dart';

class ActivityPage extends StatefulWidget {
  static const routeName = '/activity';

  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage>
    with TickerProviderStateMixin {
  late final AnchorScrollController _scrollController;
  TabController? _tabController;

  final int length = 3;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: 0, length: length, vsync: this);
    _scrollController = AnchorScrollController(
      onIndexChanged: (index, userScroll) {
        if (userScroll) {
          _tabController?.animateTo(index);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBarContent(ActivityPage.routeName),
      body: Column(
        children: [
          TopBar(
            scrollController: _scrollController,
            tabController: _tabController,
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  AnchorItemWrapper(
                    controller: _scrollController,
                    index: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(children: [
                        const Text(
                          "L'équipe de White Forest vous souhaite la",
                          style: TextStyle(fontSize: 32),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text('Bienvenue'.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 48, fontFamily: 'WickedGrit')),
                        Padding(
                          padding: const EdgeInsets.all(32),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 24,
                                      height: 1.5,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text:
                                            "Située en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire.\n"),
                                    TextSpan(
                                        text:
                                            "White Forest vous offre la possibilité de vivre une expérience unique avec nos chiens de traineau !\n"),
                                    TextSpan(
                                        text:
                                            "Pour tous les âges, activité plus ou moins physique, ou simplement une visite du chenil !\n"),
                                    TextSpan(
                                        text:
                                            "En été comme en hiver et même au printemps ou en automne venez rencontrer nos merveilleux compagnons de vie.\n"),
                                    TextSpan(
                                        text:
                                            "Sur la neige ou sur terre, Mel, Tom et son équipe vous accompagneront pour un moment inoubliable.\n"),
                                  ])),
                        )
                      ]),
                    ),
                  ),
                  AnchorItemWrapper(
                    controller: _scrollController,
                    index: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(children: [
                        const Text(
                          "L'équipe de White Forest vous souhaite la",
                          style: TextStyle(fontSize: 32),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text('Bienvenue'.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 48, fontFamily: 'WickedGrit')),
                        Padding(
                          padding: const EdgeInsets.all(32),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 24,
                                      height: 1.5,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text:
                                            "Située en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire.\n"),
                                    TextSpan(
                                        text:
                                            "White Forest vous offre la possibilité de vivre une expérience unique avec nos chiens de traineau !\n"),
                                    TextSpan(
                                        text:
                                            "Pour tous les âges, activité plus ou moins physique, ou simplement une visite du chenil !\n"),
                                    TextSpan(
                                        text:
                                            "En été comme en hiver et même au printemps ou en automne venez rencontrer nos merveilleux compagnons de vie.\n"),
                                    TextSpan(
                                        text:
                                            "Sur la neige ou sur terre, Mel, Tom et son équipe vous accompagneront pour un moment inoubliable.\n"),
                                  ])),
                        )
                      ]),
                    ),
                  ),
                  AnchorItemWrapper(
                    controller: _scrollController,
                    index: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(children: [
                        const Text(
                          "L'équipe de White Forest vous souhaite la",
                          style: TextStyle(fontSize: 32),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text('Bienvenue'.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 48, fontFamily: 'WickedGrit')),
                        Padding(
                          padding: const EdgeInsets.all(32),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 24,
                                      height: 1.5,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text:
                                            "Située en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire.\n"),
                                    TextSpan(
                                        text:
                                            "White Forest vous offre la possibilité de vivre une expérience unique avec nos chiens de traineau !\n"),
                                    TextSpan(
                                        text:
                                            "Pour tous les âges, activité plus ou moins physique, ou simplement une visite du chenil !\n"),
                                    TextSpan(
                                        text:
                                            "En été comme en hiver et même au printemps ou en automne venez rencontrer nos merveilleux compagnons de vie.\n"),
                                    TextSpan(
                                        text:
                                            "Sur la neige ou sur terre, Mel, Tom et son équipe vous accompagneront pour un moment inoubliable.\n"),
                                  ])),
                        )
                      ]),
                    ),
                  ),
                  const FooterContent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
