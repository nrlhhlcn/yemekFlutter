import 'package:flutter/material.dart';
import 'package:yemek/renkler.dart';
import 'package:yemek/yemek_detay.dart';
import 'package:yemek/yemekler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: yemekler.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // İki sütun
            crossAxisSpacing: 16.0, // Sütunlar arası boşluk
            mainAxisSpacing: 16.0, // Satırlar arası boşluk
            childAspectRatio: 0.8, // Elemanların en-boy oranı
          ),
          itemBuilder: (context, index) {
            final yemek = yemekler[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SepetSayfa(
                      yemek: yemek,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    yemek.resimYolu,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    yemek.isim,
                    style: TextStyle(color: yaziRengi, fontSize: 18),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
