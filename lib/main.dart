import 'package:flutter/material.dart';
import 'package:vucut_kitle_endeksi_uygulama_ornek/ana_sayfa.dart';

void main() {
  runApp(AnaMain());
}
class AnaMain extends StatelessWidget {
  const AnaMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaSayfa(),
      debugShowCheckedModeBanner: false,
    );
  }
}

