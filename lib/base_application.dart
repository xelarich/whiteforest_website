import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/provider/conf_provider.dart';

class BaseApplication extends ConsumerWidget {
  final Widget child;

  const BaseApplication({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(confProvider).getScreenSize(context);

    return child;
  }
}
