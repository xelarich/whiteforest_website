import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/component/footer/widget/action_text.dart';
import 'package:whiteforest_website/page/sales_condition/sales_condition_page.dart';

class Condition extends StatelessWidget {
  const Condition({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              'CONDITION',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: ActionText(
              'Conditions général de vente',
              onTap: () => context.go(SalesConditionPage.routeName),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
