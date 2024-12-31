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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              child: Image.asset(
                widget.yemek.resimYolu,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              widget.yemek.isim,
              style: TextStyle(
                  color: appbarRengi,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
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
                    backgroundColor: appbarRengi, foregroundColor: yaziRengi),
                child: const Text(
                  "Sepete Ekle",
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }

  void sepeteEkle() {
    if (sayac == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Sepete 0 tane ürün eklenemez",
            style: TextStyle(fontSize: 18),
          ),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (builder) {
            return AlertDialog(
              title: Text(
                "Sepete Eklemek istiyor musunuz?",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, color: yaziRengi),
              ),
              backgroundColor: temaRengi,
              content: Row(
                children: [
                  Image.asset(
                    widget.yemek.resimYolu,
                    width: 100,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "${sayac} tane ${widget.yemek.isim} sepete eklenecek onaylıyor musunuz?",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: yaziRengi),
                      overflow:
                          TextOverflow.ellipsis, // Metin çok uzunsa kesilir.
                      maxLines: 3, // Maksimum 2 satır gösterir.
                    ),
                  ),
                ],
              ),
              actions: [
                OutlinedButton(
                  onPressed: () {
                    snackbar();
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: appbarRengi, foregroundColor: yaziRengi),
                  child: const Text("Evet"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(foregroundColor: appbarRengi),
                  child: const Text("Hayır"),
                ),
              ],
            );
          });
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

  void snackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Sepete Başarıyla Eklendi ",
          style: TextStyle(color: yaziRengi),
        ),
        backgroundColor: appbarRengi,
        action: SnackBarAction(
          label: "Tamam",
          onPressed: () {},
          textColor: yaziRengi,
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
