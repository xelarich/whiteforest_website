import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/footer/footer_content.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';

class SalesConditionPage extends StatelessWidget {
  static const routeName = '/salesConditions';

  const SalesConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBarContent(SalesConditionPage.routeName),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "Conditions générales de ventes",
                style: TextStyle(
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _TextSalesCondition(
                    "Les activités proposées sont celles qui figurent sur le site de White Forest. "
                    "Ces activités seront réalisées en fonction d’un nombre suffisant d’inscrits défini en fonction de l’activité.",
                  ),
                  _TextSalesCondition(
                      "Chaque activité est accompagnée d’un descriptif (sur la page web de la dite activité) "
                      "avec les conditions requises pour permettre de réaliser ou non l’activité. "
                      "Le client se doit de connaître les équipements à prévoir pour l’activité. "
                      "Les photographies du site internet sont les plus fidèles possibles mais ne peuvent assurer une "
                      "similitude parfaite avec la prestation."),
                  _TextSalesCondition(
                      "La prise de rendez-vous et le paiement de la prestation constituent le "
                      "contrat de réservation et impliquent l'acceptation des conditions générales de vente et d’exercice ci-après :"),
                  _TextSalesCondition(
                    "Article 1 : Intervenants",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "Les intervenants seront titulaires du diplôme d’Etat nécessaire à l’enseignement"
                    " ou d’un diplôme différent qui donne et permet l’encadrement de nos activités. "
                    "Concernant le baptême, n’étant pas réglementée, "
                    "les intervenants seront néanmoins qualifiés et expérimentés dans ce domaine.",
                  ),
                  _TextSalesCondition(
                    "Article 2 : Assurance",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "Les prestataires s’engagent à souscrire une assurance responsabilité civile professionnelle "
                    "qui couvre les enseignants dans l’exercice de leur fonction.\n"
                    "Les pratiquants devront être titulaires d’une assurance responsabilité civile individuelle "
                    "pour tous les dommages qu’ils pourraient causer à un tiers ou à eux même du fait d’une pratique inadaptée.",
                  ),
                  _TextSalesCondition(
                    "Article 3 : Choix des prestations",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "La conduite d’attelage est une activité physique et sportive nécessitant un engagement important de la part du pratiquant."
                    " Aucune indication médicale visant à exclure les activités sportives en milieu "
                    "montagnard hivernal et/ou en présence de chiens ne doit être connue.\n"
                    "Le baptême est une activité de déplacement utilisant des moyens sommaires de confort et de protection. "
                    "Malgré l’expérience et les précautions prises par les encadrants, il existe toujours un risque objectif "
                    "lié au déplacement sur neige d’un engin de loisir glissant à l’aide d’un dispositif de traction animale. "
                    "Aucune indication médicale visant à exclure les activités pratiquées en milieu montagnard hivernal ne doit être connue.\n"
                    "Les personnes connaissant des problèmes de dos, de hanches, d’articulations, les femmes enceintes ne peuvent pratiquer ces activités.\n"
                    "En conséquence, les encadrants se réservent le droit d’annuler ou de réorienter les participants, y compris au dernier moment, "
                    "si toutefois une des contre-indications n’avait pas été signalée et qu’elle soit découverte lors de l’accueil ou même lors de la prestation.",
                  ),
                  _TextSalesCondition(
                    "Article 4 : Déroulement des prestations",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "L’activité traîneau à chiens se déroule dans un environnement particulier au caractère spécifique et aléatoire."
                    "La pratique de cette activité impose donc au client de veiller à sa propre sécurité et au strict respect des consignes.\n"
                    "L'encadrant veillera quant à lui à l’obligation de moyens qui lui est faite.\n"
                    "L’activité baptême comprend sur le créneau horaire imparti : la présentation des chiens,"
                    "la mise à l’attelage, les arrêts nécessaires à la gestion de problèmes techniques ou à la prise de photos,"
                    "la sortie proprement dite et le débriefing.\n"
                    "L’activité conduite d’attelage comprend sur le créneau horaire imparti :"
                    " le briefing initial (démonstration des savoir-faire technique inhérent à la pratique), l’équipement des pratiquants, "
                    "les arrêts techniques liés au bon déroulement d’une séance pédagogique,la séance proprement dite et le débriefing.\n"
                    "Pour des raisons de sécurité ou de contrôle sur le travail des chiens, nos activités pourront être filmées.",
                  ),
                  _TextSalesCondition(
                    "Article 5 : Horaires",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "Nos activités démarrent à l’heure prévue lors du rendez-vous, merci de prendre vos dispositions de façon à être ponctuel,"
                    " tout retard amputerait la durée de l’activité du temps de retard. "
                    "Les prestations étant collectives un retard supérieur à 10 minutes notamment en conduite d’attelage ou "
                    "Baby ou 15 minutes sur le baptême entraîne le démarrage de l’activité sans vous et donc l’annulation de votre fait.",
                  ),
                  _TextSalesCondition(
                    "Article 6 : Annulation",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "En cas d’annulation de notre part, un report de la séance vous sera proposé, s’il ne vous"
                    "convient pas, votre prestation vous sera remboursée sans pouvoir prétendre à aucune"
                    "autre indemnité. L’annulation pour des phénomènes météorologiques entraînant des"
                    "risques objectifs pour la pratique, du fait de la fermeture des routes d’accès par les"
                    "organismes gestionnaires ou du fait de décisions administratives entraînant la"
                    "suspension nécessaire de l’activité, seront considérées pour votre réservation comme"
                    "un cas de force majeure indépendant de votre et de notre volonté qui entrainera un"
                    "remboursement sans pouvoir prétendre à aucune autre indemnité.\n"
                    "En cas d’annulation de votre part ou de votre fait, en dehors de raisons médicales"
                    "certifiées, la prestation ne vous sera pas remboursée. La météo ou les conditions de"
                    "circulation en dehors de la fermeture des routes d’accès par les organismes"
                    "gestionnaires ne sont pas des causes d’annulation valables, toute activité hivernale"
                    "entraîne la circulation sur routes potentiellement enneigées.\n"
                    "Un remboursement pourra être effectué pour raison médicale sur présentation d’un"
                    "certificat médical établi le jour même de l’activité ou dans les jours précédents l’activité,"
                    "le prestataire devra pour cela avoir été prévenu en amont de la prestation.",
                  ),
                  _TextSalesCondition(
                    "Article 7 : Exclusion",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "White Forest se réserve le droit d’exclure à tout moment une personne dont le"
                    "comportement est de nature à troubler le déroulement et la sécurité de l’enseignement.\n"
                    "Dans ce cas, le client ne pourra prétendre à aucun remboursement.",
                  ),
                  _TextSalesCondition(
                    "Article 8 : Equipement nécessaire pour les activités hivernales",
                    header: true,
                  ),
                  _TextSalesCondition(
                    "– Tenue de ski\n"
                    "– Chaussures imperméables et de type randonnée (éviter les après-ski trop lourds ou trop encombrants)\n"
                    "– Pour la conduite d’attelage : tenue technique adaptée à un sport d’hiver et bottes de neige (type bottes de"
                    "montagne) ou chaussures de randonnées + guêtres\n"
                    "– Paire de chaussettes chaudes\n"
                    "– Bonnet, gants\n"
                    "– Lunettes de soleil avec un indice suffisant\n"
                    "– Crème solaire (indice élevé qui protègera aussi du froid)",
                  ),
                ],
              ),
            ),
            FooterContent(),
          ],
        ),
      ),
    );
  }
}

class _TextSalesCondition extends StatelessWidget {
  final String text;
  final bool header;

  const _TextSalesCondition(
    this.text, {
    this.header = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: header ? FontWeight.bold : null,
            fontFamily: 'Roboto',
            fontSize: 18,
            height: 1.5,
          ),
        ),
        if (!header)
          const SizedBox(
            height: 16,
          )
      ],
    );
  }
}
