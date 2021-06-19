import 'package:flutter_modular/flutter_modular.dart';

class Skin {
  final String skinName;
  final int price;
  final String picture;
  final Function() itemPressed;

  Skin({
    required this.skinName,
    required this.price,
    required this.picture,
    required this.itemPressed,
  });
}

List<Skin> skins = [
  Skin(
    skinName: "Ling Night Shade",
    price: 150000,
    picture: "assets/images/night shade.jpg",
    itemPressed: () {
      Modular.to.pushNamed(
        '/detail',
        arguments: Skin(
          itemPressed: () {},
          skinName: "Ling Night Shade",
          price: 150000,
          picture: "assets/images/night shade.jpg",
        ),
      );
    },
  ),
  Skin(
    skinName: "Hayabusa",
    price: 200000,
    picture: "assets/images/hayabusa.jpg",
    itemPressed: () {
      Modular.to.pushNamed(
        '/detail',
        arguments: Skin(
          itemPressed: () {},
          skinName: "Hayabusa",
          price: 200000,
          picture: "assets/images/hayabusa.jpg",
        ),
      );
    },
  ),
  Skin(
    skinName: "Chou KOF Series",
    price: 180000,
    picture: "assets/images/iori.jpg",
    itemPressed: () {
      Modular.to.pushNamed(
        '/detail',
        arguments: Skin(
          itemPressed: () {},
          skinName: "Chou KOF Series",
          price: 180000,
          picture: "assets/images/iori.jpg",
        ),
      );
    },
  ),
];
