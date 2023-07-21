import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'ulasim_details_screen.dart';

import '../models/ulasim_model.dart';
import '../widgets/custom_header.dart';


class UlasimScreen extends StatelessWidget {
  const UlasimScreen({Key? key}) : super(key: key);

  static const routeName = '/ulasim';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Ulasim> ulasim = Ulasim.ulasim;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomHeader(title: 'Ulaşım'),
          _UlasimMasonryGrid(
            width: width,
            ulasim: ulasim,
          ),
        ],
      ),
    );
  }
}

class _UlasimMasonryGrid extends StatelessWidget {
  const _UlasimMasonryGrid({
    Key? key,
    // ignore: unused_element
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.ulasim,
  }) : super(key: key);

  final List<double> masonryCardHeights;
  final double width;
  final List<Ulasim> ulasim;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      itemCount: 5,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        Ulasim ulasimlar = ulasim[index];
        return _buildUlasimCard(
          context,
          ulasimlar,
          index,
        );
      },
    );
  }

  InkWell _buildUlasimCard(
    BuildContext context,
    Ulasim ulasim,
    int index,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UlasimDetailsScreen(ulasim: ulasim),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: '${ulasim.id}_${ulasim.title}',
            child: Container(
              height: masonryCardHeights[index % 3],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(ulasim.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            ulasim.title,
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