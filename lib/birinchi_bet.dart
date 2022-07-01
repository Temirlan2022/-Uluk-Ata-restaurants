import 'package:flutter/material.dart';
import 'package:proect_2/drawerList/menin_drawer_menum.dart';
import 'package:proect_2/widgets/MenuWidget.dart';
import 'package:proect_2/widgets/widget-food_menu.dart';
import 'drawerList/drawerList_widget.dart';

class Birinchibet extends StatefulWidget {
  const Birinchibet({Key key}) : super(key: key);

  @override
  State<Birinchibet> createState() => _BirinchibetState();
}

class _BirinchibetState extends State<Birinchibet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 220, 214),
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.red),
            title: const Text(
              'Меню',
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
            //Шорпонун болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Шорпо')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/sup.webp',
                          sostav:
                              'Состав: Говядина, Картофель,Репчатый лук,Болгарский перец,Морковь, Помидор,Чеснок и Зелень',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //шорпонун главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/sup.webp',
                    sostavv:
                        'Состав:Говядина, Картофель,Репчатый лук,Болгарский перец,Морковь, Помидор,Чеснок и Зелень',
                    tamakAty: 'Шорпо')),
            //Шорпонун карточкасы бутту

            //Лагман болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Лагман')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/lagman.webp',
                          sostav:
                              'Состав:говядина, картофель, перец болгарский, лук репчатый, помидоры,морковь,чеснок и зелень',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Лагман главный карточкасы
                child: const MenuWidget(
                  images: 'assets/images/lagman.webp',
                  sostavv:
                      'Состав:говядина, картофель, перец болгарский, лук репчатый, помидоры,морковь,чеснок и зелень',
                  tamakAty: 'Лагман',
                )),
            //Лагман карточкасы бутту

            //Гуляш болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Гуляш')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/gulash.webp',
                          sostav:
                              'Состав: Говядина, Картофель, Репчатый лук,Болгарский перец, Морковь, Помидор, Чеснок и Зелень',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Гуляш главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/gulash.webp',
                    sostavv:
                        'Состав: Говядина, Картофель, Репчатый лук,Болгарский перец, Морковь, Помидор, Чеснок и Зелень',
                    tamakAty: 'Гуляш')),
            //Гуляш карточкасы бутту

            //Шорпонун болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Center(child: Text('Голубцы')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/golubsy.jpg',
                          sostav:
                              'Состав:Говядина, Картофель, Репчатый лук,Болгарский перец, Морковь, Помидор, Чеснок и Зелень',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Голубцы главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/golubsy.jpg',
                    sostavv:
                        'Состав:Говядина, Картофель, Репчатый лук,Болгарский перец, Морковь, Помидор, Чеснок и Зелень',
                    tamakAty: 'Голубцы')),
            //Голубцы карточкасы бутту

            const Padding(
              padding: EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text('2-тамактар', style: TextStyle(fontSize: 30.0)),
            ),

            //Аш Ташкентский болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Плов Ташкентский')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/plov.webp',
                          sostav:
                              'Состав: баранина, нут, куруч, морковь, Лук репчатый, Чеснок, Изюм, перец острый'
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Аш Ташкентский главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/plov.webp',
                    sostavv:
                        'Состав: баранина, нут, куруч, морковь, Лук репчатый, Чеснок, Изюм, перец острый,',
                    tamakAty: 'Плов Ташкентский')),
            //Аш Ташкентский карточкасы бутту

            //Острое мясо болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Острое мясо')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/achuu_et.webp',
                          sostav:
                              'Состав:говядина, помидоры, перец болгарский, лук репчатый, чеснок, петрушки, укропа, аджика, уцхо, хмели-сунели, кинзы, кориандр и лавровый лист',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Острое мясо главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/achuu_et.webp',
                    sostavv:
                        'Состав:говядина, помидоры, перец болгарский, лук репчатый, чеснок, петрушки, укропа, аджика, уцхо, хмели-сунели, кинзы, кориандр и лавровый лист',
                    tamakAty: 'Острое мясо')),
            //Острое мясо карточкасы бутту

            //Баранина болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Баранина')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/kuurdak.webp',
                          sostav:
                              'Состав:Баранина, Лук репчатый, Картофель, Чеснок, паприка, базилик, кинзы Перец острый',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Баранина главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/kuurdak.webp',
                    sostavv:
                        'Состав:Баранина, Лук репчатый, Картофель, Чеснок, паприка, базилик, кинзы Перец острый',
                    tamakAty: 'Баранина')),
            //Баранина карточкасы бутту

            //Манты болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Манты')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/manty.jpg',
                          sostav: 'Состав:Говядина, Картофель, Чеснок и Зелень',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Манты главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/manty.jpg',
                    sostavv: 'Состав:Говядина, Картофель, Чеснок и Зелень',
                    tamakAty: 'Манты')),
            //Манты карточкасы бутту

            const Padding(
              padding: EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text('Суусундуктар', style: TextStyle(fontSize: 30.0)),
            ),

            //Кофе болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Кофе')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/cofee.webp',
                          sostav:
                              'Состав: молоко, кофе растворимый, сахар, вода, лед, шоколад, корица молотая',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Кофе главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/cofee.webp',
                    sostavv:
                        'Состав: молоко, кофе растворимый, сахар, вода, лед, шоколад, корица молотая',
                    tamakAty: 'Кофе')),
            //Кофе карточкасы бутту

            //Чай болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Чай')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/chai.webp',
                          sostav:
                              'Состав:чай, мята свежая, имбирь, лимон, апельсин, мёд, ягоды',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Чай главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/chai.webp',
                    sostavv:
                        'Состав:чай, мята свежая, имбирь, лимон, апельсин, мёд, ягоды',
                    tamakAty: 'Чай')),
            //Чай карточкасы бутту

            //Кока-Кола болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Кока-Кола')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/cola.webp',
                          sostav: '1 литр - 70 сом',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Кока-Кола главный карточкасы
                child: const MenuWidget(
                  images: 'assets/images/cola.webp',
                  sostavv: '1 литр - 70 сом',
                  tamakAty: 'Кока-Кола',
                )),
            //Кока-Кола карточкасы бутту
            //Апельсиновый сок болугу башталды
            InkWell(
                onTap: () {
                  //диалоговое окно башталды
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Center(child: Text('Апельсиновый сок')),
                      content: Expanded(
                        child: FoodMenu(
                          image: 'assets/images/apelsin_sok.webp',
                          sostav: 'Состав: персик, нектарин, апельсин',
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Закрыть'))
                      ],
                    ),
                  );
                },
                //Апельсиновый сок главный карточкасы
                child: const MenuWidget(
                    images: 'assets/images/apelsin_sok.webp',
                    sostavv: 'Состав: персик, нектарин, апельсин',
                    tamakAty: 'Апельсиновый сок')),
            //Апельсиновый сок карточкасы бутту
          ],
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child:  Container(
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
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [MenuIten()],
      ),
    );
  }
}
