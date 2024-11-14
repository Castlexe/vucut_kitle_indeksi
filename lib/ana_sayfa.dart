import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vucut_kitle_endeksi_uygulama_ornek/ikinci_sayfa.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  TextEditingController _kiloController = TextEditingController();
  TextEditingController _boyController = TextEditingController();

  double _sonuc =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vücut Kitle İndeksi",style: TextStyle(fontSize: 35),),
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: ListView(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/pngwing.com.png"
                ),
                maxRadius: 109,
              ),
              Row(
                children: [
                  Text("Hesaplama : ",style: TextStyle(fontSize: 25),),
                ],
              ),
              SizedBox(height: 1,),
              TextField(
                controller:  _kiloController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                  ),
                  suffixText: "kg",
                  labelText: "Kilonuzu Giriniz!",
                ),
              ),
              SizedBox(height: 5,),
              TextField(
                controller: _boyController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)
                  ),
                  suffixText: "m",
                  labelText: "Boyunuzu Giriniz!",
                  counterText: "Lütfen Bilgilerinizi Girerken Nokta Kullanın!"
                ),
              ),
              ElevatedButton(

                child: Text("Hesapla",style: TextStyle(fontSize: 25),),
                onPressed: _hesapla,

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
              ),
              ElevatedButton(
                  child: Text("Sonuçları Gör",style: TextStyle(fontSize: 25),),
                  onPressed: (){
                    IkinciSayfayiAc(context);

                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent
                ),

              ),

              SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SONUÇ : ",style: TextStyle(fontSize: 25),),
                    Text(_sonuc.toStringAsFixed(2),style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }

  void _hesapla() {
    String boyText = _boyController.text.trim();
    String kiloText = _kiloController.text.trim();

    try{
        double boy = double.parse(boyText);
        double kilo = double.parse(kiloText);

        setState(() {
          _sonuc = kilo / (boy * boy);
        });

    } catch (e){
      print("Bir hata oluştu ${e.toString()}");
    }



  }
  
  void IkinciSayfayiAc(BuildContext context){
    MaterialPageRoute ikinciSayfa = MaterialPageRoute(

      builder: (BuildContext context) {
        return IkinciSayfa();
      },
    );
    Navigator.push(context, ikinciSayfa);
  }
}

