import 'package:flutter/material.dart';
import 'package:yemek/renkler.dart';
import 'package:yemek/yemek_yemek.dart';

class SepetSayfa extends StatefulWidget {
  const SepetSayfa({super.key, required this.yemek});
  final YemekYemek yemek;

  @override
  State<SepetSayfa> createState() => _SepetSayfaState();
}

var sayac = 0;

class _SepetSayfaState extends State<SepetSayfa> {
  var sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: temaRengi,
        appBar: AppBar(
          title: Text(
            "Yemek Yeeğ",
            style: TextStyle(fontSize: 25, color: yaziRengi),
          ),
          centerTitle: true,
          backgroundColor: appbarRengi,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.yemek.resimYolu),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  widget.yemek.isim,
                  style: TextStyle(color: yaziRengi, fontSize: 23),
                ),
                Text(
                  "${widget.yemek.kalori.toString()} kalori",
                  style: TextStyle(color: yaziRengi, fontSize: 18),
                ),
                for (var i in widget.yemek.malzemeler)
                  Text(
                    i,
                    style: TextStyle(color: yaziRengi, fontSize: 18),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: azalt,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20, right: 10),
                          child: Icon(
                            Icons.minimize_rounded,
                            size: 35,
                            color: yaziRengi,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: arttir,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.add,
                            size: 35,
                            color: yaziRengi,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${sayac} ",
                        style: TextStyle(
                          fontSize: 23,
                          color: yaziRengi,
                        ),
                      )
                    ],
                  ),
                ),
               OutlinedButton(
                    onPressed: sepeteEkle,
                    style: OutlinedButton.styleFrom(
                        backgroundColor: appbarRengi,
                        foregroundColor: yaziRengi),
                    child: const Text(
                      "Sepete Ekle",
                      style: TextStyle(fontSize: 22),
                    ))
              ],
            ),
          ),
        ));
  }

  void sepeteEkle() {
    if (sayac == 0) {
      print("Sepet 0 olamaz");
    } else {
      print("Sepete ${sayac} tane ${widget.yemek.isim} eklendi");
    }
  }

  void arttir() {
    setState(() {
      if (sayac > 8) {
        sayac = 9;
      } else {
        sayac++;
      }
    });
  }

  void azalt() {
    setState(() {
      if (sayac == 0 || sayac < 0) {
        sayac = 0;
      } else {
        sayac--;
      }
    });
  }
}
