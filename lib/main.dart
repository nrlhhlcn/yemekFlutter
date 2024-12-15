import "package:flutter/material.dart";
import "package:yemek/ana_sayfa.dart";
import "package:yemek/renkler.dart";

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
          body: const AnaSayfa()),
    ),
  );
}
