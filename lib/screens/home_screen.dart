import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/sayuran_model.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            _greetings(),
            SizedBox(
              height: 17,
            ),
            _card(),
            const SizedBox(height: 20),
            _search(),
            const SizedBox(height: 20),
            _sayuran()
          ],
        ),
      ),
    ));
  }

  ListView _sayuran() {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final sayur = sayuran[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(sayur: sayur),
                ));
          },
          child: _sayurans(sayur),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 11,
      ),
      itemCount: sayuran.length,
    );
  }

  Container _sayurans(SayuranModel sayuranModel) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF353854).withOpacity(.12),
                blurRadius: 30,
                offset: const Offset(0, 2))
          ]),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              'assets/images/${sayuranModel.image}',
              width: 88,
              height: 103,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sayuranModel.name,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3F3e3F)),
              ),
              const SizedBox(
                height: 7,
              ),
              RichText(
                  text: TextSpan(
                      text: "${sayuranModel.benefit}",
                      style: TextStyle(fontSize: 11, color: Colors.black))),
              const SizedBox(
                height: 7,
              ),
              RichText(
                  text: TextSpan(
                      text: "${sayuranModel.vitamin.join(', ')}",
                      style: TextStyle(
                          fontSize: 12, color: const Color(0xFF4CAF50)))),
            ],
          )
        ],
      ),
    );
  }

  Padding _search() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Search')),
    );
  }

  AspectRatio _card() {
    return AspectRatio(
      aspectRatio: 336 / 184,
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color(0xFF4CAF50),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background_card.png',
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Ayo Bang\n",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFFDEE1FE)),
                        children: const [
                          TextSpan(
                            text: "Makan Sayur Aja",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFDEE1FE)),
                          ),
                          TextSpan(text: "\nBiar Sehat")
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.4),
                        border: Border.all(
                            color: Colors.white.withOpacity(.12), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "See Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _greetings() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            'Sayuran bang?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
