import 'package:flutter/material.dart';

class BuildSwitchTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool currentValue;
  final Function(bool) updateValue;
  const BuildSwitchTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.currentValue,
    required this.updateValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: currentValue,
        onChanged: updateValue);
  }
}