import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../widgets/clipped_container.dart';

import '../models/alisveris_model.dart';

class AlisverisDetailsScreen extends StatelessWidget {
  const AlisverisDetailsScreen({
    Key? key,
    required this.alisveris,
  }) : super(key: key);

  final Alisveris alisveris;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _AlisverisImage(alisveris: alisveris),
        _AlisverisInformation(alisveris: alisveris),
      ],
    );
  }
}

class _AlisverisImage extends StatelessWidget {
  const _AlisverisImage({
    Key? key,
    required this.alisveris,
  }) : super(key: key);

  final Alisveris alisveris;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClippedContainer(height: 425),
        Hero(
          tag: '${alisveris.id}_${alisveris.title}',
          child: ClippedContainer(imageUrl: alisveris.imageUrl),
        ),
      ],
    );
  }
}

class _AlisverisInformation extends StatelessWidget {
  const _AlisverisInformation({
    Key? key,
    required this.alisveris,
  }) : super(key: key);

  final Alisveris alisveris;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              alisveris.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RatingBar.builder(
              initialRating: alisveris.rating,
              minRating: 0,
              direction: Axis.horizontal,
              ignoreGestures: true,
              itemCount: 5,
              itemSize: 20,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            const SizedBox(height: 20),
            Text(
              'Hakkında',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              alisveris.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

              ],
            ),
          
        ),
      
    );
  }
    void commandLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }
}