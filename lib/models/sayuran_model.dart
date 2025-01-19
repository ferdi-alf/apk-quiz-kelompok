import 'package:flutter_application_1/models/vitamin_model.dart';

class SayuranModel {
  String name;
  String image;
  List<String> vitamin;
  String benefit;

  SayuranModel(
      {required this.name,
      required this.image,
      required this.vitamin,
      required this.benefit});
}

var sayuran = [
  SayuranModel(
      name: "Wortel",
      image: "wortel.jpg",
      vitamin: [Vitamin.vitaminA],
      benefit: "Membantu menjaga kesehatan kulit."),
  SayuranModel(
      name: "Bayam",
      image: "bayam.jpg",
      vitamin: [
        Vitamin.vitaminA,
        Vitamin.vitaminC,
        Vitamin.vitaminK,
        Vitamin.zatBesi
      ],
      benefit: "Membantu mencegah anemia."),
  SayuranModel(
      name: "Brokoli",
      image: "brokoli.jpg",
      vitamin: [Vitamin.vitaminC, Vitamin.vitaminK, Vitamin.vitaminA],
      benefit: "Menurunkan risiko kanker."),
  SayuranModel(
      name: "Tomat",
      image: "tomat.jpg",
      vitamin: [Vitamin.vitaminC, Vitamin.vitaminK, Vitamin.vitaminA],
      benefit: "Mencegah penuaan dini."),
  SayuranModel(
      name: "Kangkung",
      image: "kangkung.jpg",
      vitamin: [Vitamin.vitaminA, Vitamin.vitaminC, Vitamin.zatBesi],
      benefit: "Membantu mengontrol kadar gula darah."),
];
