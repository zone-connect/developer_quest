import 'package:flutter/widgets.dart';

enum KittyType { orange, yellow }

class KittyBed extends StatelessWidget {
  static const ImageProvider redProvider =
      AssetImage('assets/style_sphinx/red_bed.png');
  static const ImageProvider greenProvider =
      AssetImage('assets/style_sphinx/green_bed.png');

  final KittyType type;

  const KittyBed({@required this.type, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case KittyType.orange:
        return Image(image: redProvider);
      case KittyType.yellow:
      default:
        return Image(image: greenProvider);
    }
  }
}

class Kitty extends StatelessWidget {
  static const ImageProvider orangeProvider =
      AssetImage('assets/style_sphinx/orange_cat.png');
  static const ImageProvider yellowProvider =
      AssetImage('assets/style_sphinx/yellow_cat.png');

  final KittyType type;

  const Kitty({@required this.type, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case KittyType.orange:
        return Image(image: orangeProvider);
      case KittyType.yellow:
      default:
        return Image(image: yellowProvider);
    }
  }
}
