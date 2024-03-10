import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitleOne;
  final String? subtitleTwo;
  final String trailingOne;
  final String? trailingTwo;

  const CardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitleOne,
    this.subtitleTwo='',
    this.trailingTwo='',
    required this.trailingOne,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 10,left: 15,right: 15),
      child: Center(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 100,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitleOne,
                style:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(subtitleTwo!)
            ],
          ),
          trailing:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                trailingOne,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(trailingTwo!)
            ],
          ),
        ),
      ),
    );
  }
}
