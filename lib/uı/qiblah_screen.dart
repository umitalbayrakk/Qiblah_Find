import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:piri_qiblah/piri_qiblah.dart';

class QiblahScreen extends StatefulWidget {
  QiblahScreen({super.key});

  @override
  State<QiblahScreen> createState() => _QiblahScreenState();
}

class _QiblahScreenState extends State<QiblahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00623A),
        title: const Text(
          "ALBAYRAK",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Konum Açılışı",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 15),
              PiriQiblah(
                compassSize: 300,
                angleTextStyle: const TextStyle(fontSize: 50, color: Colors.black,   fontWeight: FontWeight.bold),
                useDefaultAssets: false,
                customPermissionDeniedMessage: 'Konum İzni Verilmedi',
                customBackgroundCompass: SvgPicture.asset("assets/pusula.svg"),
                customNeedle: SvgPicture.asset("assets/vector.svg"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Not: Manyetik alanlar ve manyetik olabilcek\nkılıflar sonucu yanıltabilir.",
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
