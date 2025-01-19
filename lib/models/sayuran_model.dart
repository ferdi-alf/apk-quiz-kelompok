import 'package:flutter_application_1/models/vitamin_model.dart';

class SayuranModel {
  String name;
  String image;
  List<String> vitamin;
  String benefit;
  String description;

  SayuranModel(
      {required this.name,
      required this.image,
      required this.vitamin,
      required this.benefit,
      required this.description});
}

var sayuran = [
  SayuranModel(
      name: "Wortel",
      image: "wortel.jpg",
      vitamin: [Vitamin.vitaminA],
      benefit: "Membantu menjaga kesehatan kulit.",
      description:
          "Wortel adalah sayuran yang kaya akan vitamin A, vitamin C, vitamin K, dan serat. Wortel juga mengandung beta karoten yang baik untuk kesehatan mata."),
  SayuranModel(
      name: "Bayam",
      image: "bayam.jpg",
      vitamin: [
        Vitamin.vitaminA,
        Vitamin.vitaminC,
        Vitamin.vitaminK,
        Vitamin.zatBesi
      ],
      benefit: "Membantu mencegah anemia.",
      description:
          "Bayam adalah sayuran yang kaya akan vitamin A, vitamin C, vitamin K, dan zat besi. Bayam juga mengandung antioksidan yang baik untuk kesehatan jantung."),
  SayuranModel(
      name: "Brokoli",
      image: "brokoli.jpg",
      vitamin: [Vitamin.vitaminC, Vitamin.vitaminK, Vitamin.vitaminA],
      benefit: "Menurunkan risiko kanker.",
      description:
          "Brokoli adalah sayuran yang kaya akan vitamin C, vitamin K, dan vitamin A. Brokoli juga mengandung senyawa sulforaphane yang baik untuk kesehatan tulang."),
  SayuranModel(
      name: "Tomat",
      image: "tomat.jpg",
      vitamin: [Vitamin.vitaminC, Vitamin.vitaminK, Vitamin.vitaminA],
      benefit: "Mencegah penuaan dini.",
      description:
          "Tomat adalah sayuran yang kaya akan vitamin C, vitamin K, dan vitamin A. Tomat juga mengandung likopen yang baik untuk kesehatan kulit."),
  SayuranModel(
      name: "Kangkung",
      image: "kangkung.jpg",
      vitamin: [Vitamin.vitaminA, Vitamin.vitaminC, Vitamin.zatBesi],
      benefit: "Membantu mengontrol kadar gula darah.",
      description:
          "Kangkung adalah sayuran yang kaya akan vitamin A, vitamin C, dan zat besi. Kangkung juga mengandung senyawa antioksidan yang baik untuk kesehatan mata."),
];
