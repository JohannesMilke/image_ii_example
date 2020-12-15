import 'package:flutter/material.dart';

class FitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
            fit: BoxFit.cover,
            semanticLabel: 'This is an image of a row of plants',
            errorBuilder: (context, exception, stackTrace) => Container(
              child: Center(
                child: Text(
                  'Cannot load image!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          buildTitle('Portrait'),
          buildPortraitImage(BoxFit.none),
          buildPortraitImage(BoxFit.fill),
          buildPortraitImage(BoxFit.cover, alignment: Alignment.center),
          buildPortraitImage(BoxFit.cover, alignment: Alignment.topCenter),
          buildPortraitImage(BoxFit.cover, alignment: Alignment.bottomCenter),
          buildPortraitImage(BoxFit.fitHeight),
          buildPortraitImage(BoxFit.fitWidth),
          buildPortraitImage(BoxFit.contain),
          const SizedBox(height: 64),
          Image.network(
            'https://images.unsplash.com/photo-1444930694458-01babf71870c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=830&q=80',
            fit: BoxFit.cover,
            semanticLabel: "This is an image of a row of plants",
            errorBuilder: (context, exception, stackTrace) => Container(
              child: Center(
                child: Text(
                  'Cannot load image!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          buildTitle('Landscape'),
          buildLandscapeImage(BoxFit.none),
          buildLandscapeImage(BoxFit.fill),
          buildLandscapeImage(BoxFit.cover, alignment: Alignment.center),
          buildLandscapeImage(BoxFit.cover, alignment: Alignment.centerLeft),
          buildLandscapeImage(BoxFit.cover, alignment: Alignment.centerRight),
          buildLandscapeImage(BoxFit.fitHeight),
          buildLandscapeImage(BoxFit.fitWidth),
          buildLandscapeImage(BoxFit.contain),
        ],
      );

  Widget buildPortraitImage(
    BoxFit fit, {
    Alignment alignment = Alignment.center,
  }) {
    final align = alignment != Alignment.center ? alignment : '';

    return Column(
      children: [
        buildHeader('$fit $align'),
        Center(
          child: Container(
            color: Colors.black54,
            child: Image.network(
              'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
              width: 250,
              height: 250,
              fit: fit,
              alignment: alignment,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLandscapeImage(
    BoxFit fit, {
    Alignment alignment = Alignment.center,
  }) {
    final align = alignment != Alignment.center ? alignment : '';

    return Column(
      children: [
        buildHeader('$fit $align'),
        Center(
          child: Container(
            color: Colors.black54,
            child: Image.network(
              'https://images.unsplash.com/photo-1444930694458-01babf71870c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=830&q=80',
              width: 250,
              height: 250,
              fit: fit,
              alignment: alignment,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildHeader(String text) => Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          textAlign: TextAlign.center,
        ),
      );

  Widget buildTitle(String text) => Center(
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.red,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      );
}
