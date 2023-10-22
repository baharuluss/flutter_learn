import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget{
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Bahar';
  final String? userName ; // nullable geliyor
  final ProjectKeys keys = ProjectKeys();
  
  @override
  Widget build(BuildContext context) { // build metodu ile kendi componentimi yazmaya başlıyorum.
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //ana eksen ortala
          children: [ //çocuklarımı ekliyorum
            Text(
              'Welcome $name ${name.length}', //10 kere tekrarla
              maxLines: 2, //max satır sayısı
              overflow: TextOverflow.ellipsis, //satır sayısını geçerse ne olacak
              textScaleFactor: .4, //yazı boyutu farklı cihazlar için lazım olabiliyor bunlar ilerki konu pek gerek yok
              textAlign: TextAlign.right, //sağa yasla
              style: const TextStyle(
                wordSpacing: 2, //harfler arası boşluk
                decoration: TextDecoration.underline, //altı çizili
                fontStyle: FontStyle.italic, //italik
                //height: 24, //satır yüksekliği
                color: Colors.lime, //yazı rengi
                letterSpacing:2, //kelimeler arası boşluk
                fontSize: 24,
                fontWeight: FontWeight.w600
              ),
            ),
             Text(
              'Hello $name ${name.length}', //10 kere tekrarla
              maxLines: 2, //max satır sayısı
              overflow: TextOverflow.ellipsis, //satır sayısını geçerse ne olacak
              textScaleFactor: .4, //yazı boyutu farklı cihazlar için lazım olabiliyor bunlar ilerki konu pek gerek yok
              textAlign: TextAlign.right, //sağa yasla
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Hello $name ${name.length}',
              maxLines: 2, 
              overflow: TextOverflow.ellipsis, 
              textScaleFactor: .4, 
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor),
            ), 
            //Text(userName!) // bu şekilde verilmez, dolu gelebilir bir anda kodda hata verebilir
            Text(userName ?? ''),// boş string olarak bu şekilde yollanabilir.
            Text(keys.welcome),
          ],  
        )     
      ),
    ); 
  }
}
// ProjectStyles classı oluşturup stylelarımı burada tutuyorum.
// static yapmamın sebebi bu classı çağırdığımda newlemek zorunda kalmamak için.
// Bunu başka bir klosörde de tutabilirdim ama şimdilik burada tutuyorum.
class ProjectStyles { 
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2, //harfler arası boşluk
    decoration: TextDecoration.underline, //altı çizili
    fontStyle: FontStyle.italic, //italik
    //height: 24, //satır yüksekliği
    color: Colors.lime, //yazı rengi
    letterSpacing:2, //kelimeler arası boşluk
    fontSize: 24,
    fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}

class ProjectKeys{
  final String welcome = 'Merhaba';

}