import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String locality;
  final String type;

  const CustomListTile({
    super.key,
    required this.name,
    required this.type,
    required this.locality,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.location_on,
      ),
      title: Text(
        name,
      ),
      subtitle: Text(
        '$locality, $type',
      ),
    );
  }
}
