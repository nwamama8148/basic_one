import 'package:basic_one/my_home_page.dart';
import 'package:flutter/material.dart';

class AssetPage extends StatelessWidget {
  const AssetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      child: const Column(
        children: [
          Text('My Assets'),
          Icon(Icons.cancel),
        ],
      ),
    );
  }
}
