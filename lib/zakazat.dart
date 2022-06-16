import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proect_2/about_me.dart';
import 'package:proect_2/birinchi_bet.dart';
import 'package:proect_2/ekinchi_bet.dart';
import 'package:proect_2/menin_drawer_menum.dart';

class Zakazat extends StatefulWidget {
  const Zakazat({Key key}) : super(key: key);

  @override
  State<Zakazat> createState() => _ZakazatState();
}

class _ZakazatState extends State<Zakazat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 220, 214),
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.red),
            title: const Text(
              'Заказать',
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text(
                '1-тамактар',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/sup.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Шорпо',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав:Говядина, Картофель,Репчатый лук,Болгарский перец,Морковь, Помидор,Чеснок и Зелень',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/lagman.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Лагман',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав:говядина, картофель, перец болгарский, лук репчатый, помидоры,морковь,чеснок и зелень',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/gulash.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Гуляш',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав: Говядина, Картофель, Репчатый лук,Болгарский перец, Морковь, Помидор, Чеснок и Зелень',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/golubsy.jpg',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Column(
                      children: [
                        Text(
                          'Голубцы',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав:Говядина, Картофель, Репчатый лук,Болгарский перец, Морковь, Помидор, Чеснок и Зелень',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text('2-тамактар', style: TextStyle(fontSize: 30.0)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/plov.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Аш Ташкентский',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав: баранина, нут, куруч, морковь, Лук репчатый, Чеснок, Изюм, перец острый,',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/achuu_et.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Ачуу эт',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав:говядина, помидоры, перец болгарский, лук репчатый, чеснок, петрушки, укропа, аджика, уцхо, хмели-сунели, кинзы, кориандр и лавровый лист',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/kuurdak.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Куурдак',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав:Баранина, Лук репчатый, Картофель, Чеснок, паприка, базилик, кинзы Перец острый,',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/manty.jpg',
                      width: 120.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Манты',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав:Говядина, Картофель, Чеснок и Зелень',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text('Суусундуктар', style: TextStyle(fontSize: 30.0)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/cofee.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Кофе',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав: молоко, кофе растворимый, сахар, вода, лед, шоколад, корица молотая',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/chai.webp',
                      width: 120.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(
                      children: [
                        Text(
                          'Чай',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав:чай, мята свежая, имбирь, лимон, апельсин, мёд, ягоды',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/cola.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Column(
                        children: [
                          Text(
                            'Кока-Кола',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            '1 литр - 70 сом',
                            style: TextStyle(fontSize: 10.0),
                          ),
                          Text(
                            '1,5 литр - 90 сом',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/apelsin_sok.webp',
                      width: 120.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Апельсиновый сок',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'Состав: персик, нектарин, апельсин',
                            style: TextStyle(fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
         floatingActionButton: FloatingActionButton.extended(onPressed:() {}, label: Text('Заказать'),),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
                child: Column(
              children: [MyHeaderDrawer(), MyDrawerList()],
            )),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [menuItem()],
      ),
    );
  }

  Widget menuItem() {
    return Material(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Birinchibet())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(Icons.menu_book),
                  ),
                  Expanded(
                      child: Text(
                    'Меню',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Ekinchibet())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(Icons.location_city),
                  ),
                  Expanded(
                      child: Text(
                    'Наш адрес',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Zakazat())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(Icons.car_repair),
                  ),
                  Expanded(
                      child: Text(
                    'Доставка',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Aboutme())));
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(Icons.person),
                  ),
                  Expanded(
                    child: Text(
                      'Профиль',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
