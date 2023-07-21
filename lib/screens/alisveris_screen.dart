import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'alisveris_details_screen.dart';

import '../models/alisveris_model.dart';
import '../widgets/custom_header.dart';


class AlisverisScreen extends StatelessWidget {
  const AlisverisScreen({Key? key}) : super(key: key);

  static const routeName = '/alisveris';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Alisveris> alisveris = Alisveris.alisveris;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomHeader(title: 'Alışveriş Yerleri'),
          _AlisverisMasonryGrid(
            width: width,
            alisveris: alisveris,
          ),
        ],
      ),
    );
  }
}

class _AlisverisMasonryGrid extends StatelessWidget {
  const _AlisverisMasonryGrid({
    Key? key,
    // ignore: unused_element
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.alisveris,
  }) : super(key: key);

  final List<double> masonryCardHeights;
  final double width;
  final List<Alisveris> alisveris;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      itemCount: 12,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        Alisveris alisverism = alisveris[index];
        return _buildAlisverisCard(
          context,
          alisverism,
          index,
        );
      },
    );
  }

  InkWell _buildAlisverisCard(
    BuildContext context,
    Alisveris alisveris,
    int index,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlisverisDetailsScreen(alisveris: alisveris),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: '${alisveris.id}_${alisveris.title}',
            child: Container(
              height: masonryCardHeights[index % 3],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(alisveris.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            alisveris.title,
            maxLines: 3,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}