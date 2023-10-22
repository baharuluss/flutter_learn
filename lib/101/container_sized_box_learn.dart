import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox( //iskelet kutu oluşturur 
            width: 300,
            height: 200,
            child: Text('a' * 500), // kutuyu görmek için
          ),
          const SizedBox.shrink(),// bir component için boş alan gerektiğinde kullanıyoruz.
          SizedBox.square( // kare bir alan oluşturur.
            dimension: 50, // 50'lik alan olduğunu belirtiyoruz.
            child: Text('b' *50), //
          ),
          Container(
            height: 50,
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 100, minHeight: 25, maxHeight: 120),
            child: Text('aa' * 5, maxLines: 2), // kırmızı container içi değişiyor.
            padding: const EdgeInsets.all(10),// içerideki componente padding atarız
            margin: const EdgeInsets.all(10), // dışarı padding vermek için.
            decoration: ProjectUtility.boxDecoration,
          )

           
        ],
      ), 
      
    );
  }
}
class ProjectUtility  {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10) ,
    //color: Colors.red, // color decorationun içinde olması lazım.
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [ BoxShadow( //projeden aldığımız kendi propertileriyle shadow ekliyoruz
    color: Colors.green, offset: Offset(0.1, 1), blurRadius:12, // 3.parti uygulamalardan bakarak
    )] ,
    //shape: BoxShape.circle,
    border: Border.all(width: 10, color: Colors.white)
  );
}

class ProjectContainerDecaration extends BoxDecoration {
  ProjectContainerDecaration()
    : super(
      borderRadius: BorderRadius.circular(10) ,
      //color: Colors.red, // color decorationun içinde olması lazım.
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [ BoxShadow( //projeden aldığımız kendi propertileriyle shadow ekliyoruz
      color: Colors.green, offset: Offset(0.1, 1), blurRadius:12, // 3.parti uygulamalardan bakarak
      )] ,
      //shape: BoxShape.circle,
      border: Border.all(width: 10, color: Colors.white));
}