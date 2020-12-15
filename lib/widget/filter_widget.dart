import 'package:flutter/material.dart';
import 'package:image_ii_example/color_filters.dart';

class FilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
            height: 250,
            fit: BoxFit.cover,
            color: Colors.green,
            colorBlendMode: BlendMode.darken,
          ),
          ColorFiltered(
            colorFilter: ColorFilters.greyscale,
            child: buildImage(),
          ),
          ColorFiltered(
            colorFilter: ColorFilters.sepia,
            child: buildImage(),
          ),
          ColorFiltered(
            colorFilter: ColorFilters.invert,
            child: buildImage(),
          ),
        ],
      );

  Widget buildImage() => Image.network(
        'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
        height: 250,
        fit: BoxFit.cover,
      );
}
