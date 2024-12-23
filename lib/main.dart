import 'package:flutter/material.dart';
import 'package:yemek/ana_sayfa.dart';
import 'package:yemek/renkler.dart';
import 'package:yemek/sepet_sayfa.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: temaRengi,
        appBar: AppBar(
          title: Text(
            "Yemek Yeeğ",
            style: TextStyle(fontSize: 25, color: yaziRengi),
          ),
          centerTitle: true,
          backgroundColor: appbarRengi,
        ),
        body: const AnaSayfa(),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SepetSayfa(),
                  ),
                );
              },
              child: Image.asset(
                "resimler/shop.png",
                fit: BoxFit.cover,
                width: 30,
              ),
            );
          },
        ),
      ),
    ),
  );
}
