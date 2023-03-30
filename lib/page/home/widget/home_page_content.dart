import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whiteforest_website/component/header/header_carousel.dart';
import 'package:whiteforest_website/shared/image_text.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        HeaderCarousel(),
        Padding(
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
                style: const TextStyle(fontSize: 48, fontFamily: 'WickedGrit')),
            Padding(
              padding: const EdgeInsets.all(32),
              child: RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      children: [
                        TextSpan(
                            text:
                                "A DEFINIR\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non tortor ut quam rutrum bibendum. In pharetra eu nulla in placerat. Nam scelerisque dui massa. Sed pulvinar non ex in imperdiet. Nulla facilisi. Ut erat enim, interdum nec nunc sed, congue venenatis lectus. Sed vulputate vehicula aliquet.Nullam ultricies ac massa attincidunt. Quisque mollis turpisconsequat ultricies commodo. Praesentmaximus mi cursus sem sodales, eget facilisis massa interdu.Cras lorem ex, volutpat nec enim nec, efficitur ultricesnisi. Maecenas et ante dui. Cras in purus urna.Maecenastincidunt mauris sed velit tincidunt, eu pretiumdui rutrum. Curabitur aliquam hendrerit commodo. Proin velipsum urna. Quisque euismod auctor quam non malesuada.Etiam placerat sapien id facilisis mollis. Sed vitae elementummi.Aenean justo magna, pharetra quis urna at, consequatfacilisisnisl. Suspendisse vel consequat mauris. Etiam volutpat vestibulumante in bibendum."),
                      ])),
            )
          ]),
        ),
        SizedBox(
          height: screenSize.height * 0.60,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/cover.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  flex: 4,
                  child: Text(
                    "Vivez une expérience inoubliable avec",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(flex: 1, child: SizedBox())
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Nos chiens ...'.toUpperCase(),
                    style:
                        const TextStyle(fontSize: 48, fontFamily: 'WickedGrit'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      children: [
                        TextSpan(
                            text:
                                "A DEFINIR\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non tortor ut quam rutrum bibendum. In pharetra eu nulla in placerat. Nam scelerisque dui massa. Sed pulvinar non ex in imperdiet. Nulla facilisi. Ut erat enim, interdum nec nunc sed, congue venenatis lectus. Sed vulputate vehicula aliquet.Nullam ultricies ac massa attincidunt. Quisque mollis turpisconsequat ultricies commodo. Praesentmaximus mi cursus sem sodales, eget facilisis massa interdu.Cras lorem ex, volutpat nec enim nec, efficitur ultricesnisi. Maecenas et ante dui. Cras in purus urna.Maecenastincidunt mauris sed velit tincidunt, eu pretiumdui rutrum. Curabitur aliquam hendrerit commodo. Proin velipsum urna. Quisque euismod auctor quam non malesuada.Etiam placerat sapien id facilisis mollis. Sed vitae elementummi.Aenean justo magna, pharetra quis urna at, consequatfacilisisnisl. Suspendisse vel consequat mauris. Etiam volutpat vestibulumante in bibendum."),
                      ])),
            )
          ]),
        ),
        SizedBox(
          height: screenSize.height * 0.60,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/cover.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  flex: 4,
                  child: Text(
                    "Et venez à la rencontre de notre équipe de",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Mushers'.toUpperCase(),
                    style:
                        const TextStyle(fontSize: 48, fontFamily: 'WickedGrit'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 8,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16))),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profil_mel.jpeg',
                          height: 300,
                          fit: BoxFit.fill,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Meleanne',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 8,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16))),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/blank_profile.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          width: 300,
                          height: 300,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Thomas',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: SvgPicture.asset(
            'assets/icons/forest_line.svg',
            width: screenSize.width,
            fit: BoxFit.fitWidth,
            color: Colors.white,
          ),
        ),
        Container(
          color: Colors.white,
          width: double.maxFinite,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const Text(
              'Vous êtes plutôt',
              style: TextStyle(
                fontSize: 48,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text.rich(TextSpan(
                style: TextStyle(
                  fontSize: 48,
                ),
                children: [
                  TextSpan(
                      text: 'Été', style: TextStyle(fontFamily: 'WickedGrit')),
                  TextSpan(
                    text: ' ou ',
                  ),
                  TextSpan(
                      text: 'Hiver',
                      style: TextStyle(fontFamily: 'WickedGrit')),
                  TextSpan(
                    text: ' ?',
                  ),
                ])),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Nos activités hivernales',
                style: TextStyle(fontSize: 36),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageText(
                  'assets/images/img1.jpeg',
                  text: 'Cani-rando',
                ),
                ImageText('assets/images/img2.jpeg', text: 'Raid'),
                ImageText('assets/images/img3.jpeg', text: 'Cani-rando'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Nos activités estivales',
                style: TextStyle(fontSize: 36),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageText(
                  'assets/images/img1.jpeg',
                  text: 'Cani-rando',
                ),
                ImageText('assets/images/img2.jpeg', text: 'Raid'),
                ImageText('assets/images/img3.jpeg', text: 'Cani-rando'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.brown,
                      backgroundColor: Colors.white,
                      elevation: 8,
                      side: const BorderSide(
                        width: 2,
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Décrouvez toutes nos activités',
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  )),
            ),
          ]),
        ),
      ],
    );
  }
}
