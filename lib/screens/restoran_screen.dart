import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'restoran_details_screen.dart';

import '../models/restoran_model.dart';
import '../widgets/custom_header.dart';


class RestoranScreen extends StatelessWidget {
  const RestoranScreen({Key? key}) : super(key: key);

  static const routeName = '/restoran';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Restoran> restoran = Restoran.restoran;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomHeader(title: 'Restoranlar'),
          _RestoranMasonryGrid(
            width: width,
            restoran: restoran,
          ),
        ],
      ),
    );
  }
}

class _RestoranMasonryGrid extends StatelessWidget {
  const _RestoranMasonryGrid({
    Key? key,
    // ignore: unused_element
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.restoran,
  }) : super(key: key);

  final List<double> masonryCardHeights;
  final double width;
  final List<Restoran> restoran;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      itemCount: 9,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        Restoran restoranlar = restoran[index];
        return _buildActivityCard(
          context,
          restoranlar,
          index,
        );
      },
    );
  }

  InkWell _buildActivityCard(
    BuildContext context,
    Restoran restoran,
    int index,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestoranDetailsScreen(restoran: restoran),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: '${restoran.id}_${restoran.title}',
            child: Container(
              height: masonryCardHeights[index % 3],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(restoran.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            restoran.title,
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