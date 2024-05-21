import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Kullanıcı giriş verilerini saklamak için veri modeli sınıfı
class UserData {
  String kullaniciAdi = '';
  String aracBilgisi = '';
  String aracHizi = '';
  String xKoordinati = '';
  String yKoordinati = '';
}

class MyApp extends StatelessWidget {
  // Veri modeli sınıfından bir örnek oluşturuluyor
  final UserData userData = UserData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'lib/assets/images/s1.png',
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'lib/assets/images/s.png',
                                  width: 1000,
                                  height: 150,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Kullanıcı Bilgisi:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      onChanged: (value) {
                        userData.kullaniciAdi = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Kullanıcı Adı',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Araç Bilgisi:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      onChanged: (value) {
                        userData.aracBilgisi = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Araç Bilgisi',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Araç Hızı:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      onChanged: (value) {
                        userData.aracHizi = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Araç Hızı',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Konum Bilgileri:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      onChanged: (value) {
                        userData.xKoordinati = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'X Koordinatı',
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      onChanged: (value) {
                        userData.yKoordinati = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Y Koordinatı',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Placeholder(), // Kameradan alınan görüntü buraya eklenecek
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_upward),
                          onPressed: () {
                            // Yukarı yönlü hareketi gerçekleştir
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            // Geri yönlü hareketi gerçekleştir
                          },
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            // İleri yönlü hareketi gerçekleştir
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_downward),
                          onPressed: () {
                            // Aşağı yönlü hareketi gerçekleştir
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
