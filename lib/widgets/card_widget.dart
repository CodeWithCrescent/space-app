import 'package:flutter/material.dart';
import 'package:space_app/class/item_class.dart';
import 'package:space_app/core/constants.dart';
import 'package:space_app/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(box: box);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kdouble10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kdouble5),
              Image.network(box.imagePath),
              const SizedBox(height: kdouble5),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('This is a ${box.title} description'),
              const SizedBox(height: kdouble5),
            ],
          ),
        ),
      ),
    );
  }
}
