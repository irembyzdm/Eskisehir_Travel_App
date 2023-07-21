import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../widgets/clipped_container.dart';

import '../models/restoran_model.dart';

class RestoranDetailsScreen extends StatelessWidget {
  const RestoranDetailsScreen({
    Key? key,
    required this.restoran,
  }) : super(key: key);

  final Restoran restoran;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _RestoranImage(restoran: restoran),
        _RestoranInformation(restoran: restoran),
      ],
    );
  }
}

class _RestoranImage extends StatelessWidget {
  const _RestoranImage({
    Key? key,
    required this.restoran,
  }) : super(key: key);

  final Restoran restoran;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClippedContainer(height: 425),
        Hero(
          tag: '${restoran.id}_${restoran.title}',
          child: ClippedContainer(imageUrl: restoran.imageUrl),
        ),
      ],
    );
  }
}

class _RestoranInformation extends StatelessWidget {
  const _RestoranInformation({
    Key? key,
    required this.restoran,
  }) : super(key: key);

  final Restoran restoran;

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
              restoran.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RatingBar.builder(
              initialRating: restoran.rating,
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
              restoran.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\₺${restoran.price}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    commandLaunch('https://www.tripadvisor.com.tr/Restaurants-g319806-Eskisehir_Eskisehir_Province.html');
                  },
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: const Color(0xFF231955),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text(
                    'Bilgi',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
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