import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';

import '101/text_learn_view.dart';

void main() {
  runApp(const MyApp()); //ALI DAYI
}
// runapp projryi başlatıyor.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Ali dayının evi
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ContainerSizedBoxLearn(),
    );
  }
}

//MaterialApp projenin şemasını çizer curpertino component eklenebilir.
// localizition, rout ve theme mainde yapılıyor
// MaterialApp bir kere eklenir. fazla eklemek doğru bir yaklaşım değil.