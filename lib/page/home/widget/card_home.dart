import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/footer/widget/action_text.dart';

class CardHome extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Function onTap;

  const CardHome(this.title, this.description, this.imagePath,
      {required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 8,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 400,
            height: 350,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontFamily: 'Roboto'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 400,
            child: Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16, fontFamily: 'Roboto'),
            ),
          ),
          Container(
            width: 400,
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: ActionText(
                'Voir plus',
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
