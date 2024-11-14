import 'package:flutter/material.dart';
import 'package:vucut_kitle_endeksi_uygulama_ornek/kilo_bilgileri.dart';

class IkinciSayfa extends StatefulWidget {
  const IkinciSayfa({super.key});

  @override
  State<IkinciSayfa> createState() => _IkinciSayfaState();
}

class _IkinciSayfaState extends State<IkinciSayfa> {

  List<Siniflandirma> _bilgiler = [

    Siniflandirma("Zayıf", "18,5'ın altında"),
    Siniflandirma("Normal", "18,5 - 24,9"),
    Siniflandirma("Fazla Kilolu", "25 - 29,9"),
    Siniflandirma("Obezite", "30 ve üzeri"),
    Siniflandirma("1.Derece Obezite", "30 - 34,9"),
    Siniflandirma("2.Derece Obezite", "35 - 39,9"),
    Siniflandirma("3.Derece Obezite", "40 ve üzeri"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuçlarınız : ",style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.amberAccent,
        child: ListView.builder(
            itemBuilder: _bilgileriAl,
          itemCount: _bilgiler.length,
        ),

      ),


    );


  }


  Widget _bilgileriAl(BuildContext context, int index){
    return Card(
      child: ListTile(
      
        title: Text(_bilgiler[index].sinifi),
        trailing: Text(_bilgiler[index].kitleIndeksi),
        leading: Icon(Icons.monitor_weight_outlined),
      
      ),
    );
  }



}
