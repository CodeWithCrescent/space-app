import 'package:flutter/material.dart';
import 'package:space_app/class/item_class.dart';
import 'package:space_app/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('SnackBarrrr'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kdouble10),
          child: Column(
            children: [
              Image.network(widget.box.imagePath),
              const SizedBox(height: kdouble20),
              Wrap(
                spacing: kdouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 22;
                      });
                    },
                    child: const Text('Small Title'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 50;
                      });
                    },
                    child: const Text('Medium Title'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 100;
                      });
                    },
                    child: const Text('Large Title'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 200;
                      });
                    },
                    child: const Text('Huge Title'),
                  ),
                ],
              ),
              const SizedBox(height: kdouble20),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontSizeCustom, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                baconDecription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kdouble10),
              const Text(
                baconDecription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
