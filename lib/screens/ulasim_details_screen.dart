import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/clipped_container.dart';

import '../models/ulasim_model.dart';

class UlasimDetailsScreen extends StatelessWidget {
  const UlasimDetailsScreen({
    Key? key,
    required this.ulasim,
  }) : super(key: key);

  final Ulasim ulasim;

    @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _UlasimImage(ulasim: ulasim),
        _UlasimInformation(ulasim: ulasim),
      ],
    );
  }
}

class _UlasimImage extends StatelessWidget {
  const _UlasimImage({
    Key? key,
    required this.ulasim,
  }) : super(key: key);

  final Ulasim ulasim;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClippedContainer(height: 425),
        Hero(
          tag: '${ulasim.id}_${ulasim.title}',
          child: ClippedContainer(imageUrl: ulasim.imageUrl),
        ),
      ],
    );
  }
}

class _UlasimInformation extends StatelessWidget {
  const _UlasimInformation({
    Key? key,
    required this.ulasim,
  }) : super(key: key);

  final Ulasim ulasim;

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
              ulasim.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
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
              ulasim.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    commandLaunch('https://www.eskisehir.bel.tr/sayfalar.php?sayfalar_id=21');
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