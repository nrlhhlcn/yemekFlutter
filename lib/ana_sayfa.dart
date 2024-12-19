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
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SepetSayfa(
                                        yemek: yemekler[0],
                                      )));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[0].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[0].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SepetSayfa(yemek: yemekler[1])));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[1].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[1].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SepetSayfa(yemek: yemekler[2])));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[2].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[2].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SepetSayfa(yemek: yemekler[3])));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[3].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[3].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SepetSayfa(yemek: yemekler[4])));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[4].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[4].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SepetSayfa(yemek: yemekler[5])));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[5].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[5].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SepetSayfa(yemek: yemekler[6])));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[6].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[6].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SepetSayfa(yemek: yemekler[7])));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              yemekler[7].resimYolu,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              yemekler[7].isim,
                              style: TextStyle(color: yaziRengi, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
