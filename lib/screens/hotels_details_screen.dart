import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../widgets/clipped_container.dart';

import '../models/hotels_model.dart';

class HotelsDetailsScreen extends StatelessWidget {
  const HotelsDetailsScreen({
    Key? key,
    required this.hotels,
  }) : super(key: key);

  final Hotels hotels;

    @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _HotelsImage(hotels: hotels),
        _HotelsInformation(hotels: hotels),
      ],
    );
  }
}

class _HotelsImage extends StatelessWidget {
  const _HotelsImage({
    Key? key,
    required this.hotels,
  }) : super(key: key);

  final Hotels hotels;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClippedContainer(height: 425),
        Hero(
          tag: '${hotels.id}_${hotels.title}',
          child: ClippedContainer(imageUrl: hotels.imageUrl),
        ),
      ],
    );
  }
}

class _HotelsInformation extends StatelessWidget {
  const _HotelsInformation({
    Key? key,
    required this.hotels,
  }) : super(key: key);

  final Hotels hotels;

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
              hotels.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RatingBar.builder(
              initialRating: hotels.rating,
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
              hotels.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\₺${hotels.price}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    commandLaunch('https://www.etstur.com/Eskisehir-Otelleri?&adult_1=2');
                  },
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: const Color(0xFF231955),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text(
                    'Rezervasyon',
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