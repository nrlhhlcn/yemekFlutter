import 'package:flutter/material.dart';
import 'package:yemek/renkler.dart';

class SepetSayfa extends StatefulWidget {
  const SepetSayfa({super.key});

  @override
  State<SepetSayfa> createState() => _SepetSayfaState();
}

class _SepetSayfaState extends State<SepetSayfa> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: temaRengi,
        appBar: AppBar(
          title: Text(
            "Septe Sayfası",
            style: TextStyle(color: yaziRengi),
          ),
          backgroundColor: appbarRengi,
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Sepet Sayfası",
            style: TextStyle(color: yaziRengi),
          ),
        ),
      ),
    );
  }
}
