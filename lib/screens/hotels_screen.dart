import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'hotels_details_screen.dart';

import '../models/hotels_model.dart';
import '../widgets/custom_header.dart';



class HotelsScreen extends StatelessWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  static const routeName = '/hotels';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Hotels> hotels = Hotels.hotels;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomHeader(title: 'Oteller'),
          _HotelsMasonryGrid(
            width: width,
            hotels: hotels,
          ),
        ],
      ),
    );
  }
}

class _HotelsMasonryGrid extends StatelessWidget {
  const _HotelsMasonryGrid({
    Key? key,
    // ignore: unused_element
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.hotels,
  }) : super(key: key);

  final List<double> masonryCardHeights;
  final double width;
  final List<Hotels> hotels;

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
        Hotels hotel = hotels[index];
        return _buildHotelsCard(
          context,
          hotel,
          index,
        );
      },
    );
  }

  InkWell _buildHotelsCard(
    BuildContext context,
    Hotels hotels,
    int index,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HotelsDetailsScreen(hotels: hotels),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: '${hotels.id}_${hotels.title}',
            child: Container(
              height: masonryCardHeights[index % 3],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(hotels.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            hotels.title,
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