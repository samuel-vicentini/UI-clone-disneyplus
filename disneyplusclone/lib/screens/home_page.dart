// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prova2tri_disneyplusclone/screens/generos/disney_page.dart';
import 'package:prova2tri_disneyplusclone/screens/generos/marvel_page.dart';
import 'package:prova2tri_disneyplusclone/screens/generos/natgeo_page.dart';
import 'package:prova2tri_disneyplusclone/screens/generos/pixar_page.dart';
import 'package:prova2tri_disneyplusclone/screens/generos/starwars_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tempoAcabou = false;
  int segundosFaltantes = 1;
  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (segundosFaltantes == 0) {
        setState(() {
          tempoAcabou = true;
        });
      }
      setState(() {
        segundosFaltantes -= 1;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return tempoAcabou == false ?
    Scaffold(
      backgroundColor: Color.fromRGBO(45, 48, 69, 1),
      body: SafeArea(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0, 1],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [Color.fromRGBO(45, 48, 69, 1),Color.fromRGBO(26, 29, 41, 1)
                  ]),
            ),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Image.asset('assets/disney_plus_logo.png', width: 120, height: 70)]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        color: Colors.blueAccent,
                      ),
                ])
              ],
      ))))
      : 
    Scaffold(
      backgroundColor: Color.fromRGBO(45, 48, 69, 1),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: [0, 1.0],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [Color.fromRGBO(45, 48, 69, 1),Color.fromRGBO(26, 29, 41, 1)]),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/disney_plus_logo.png', width: 120, height: 70),
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 0.91,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 6)),
                  items: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('assets/posteres/carrossel/5.jpg',fit: BoxFit.cover),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('assets/posteres/carrossel/4.jpg',fit: BoxFit.cover),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('assets/posteres/carrossel/3.jpg',fit: BoxFit.cover),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('assets/posteres/carrossel/2.jpg',fit: BoxFit.cover),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('assets/posteres/carrossel/1.jpg',fit: BoxFit.cover),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: AspectRatio(
                          aspectRatio: 1.1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  stops: [0.6, 1.0],
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [Color.fromRGBO(45, 48, 69, 1),Color.fromRGBO(26, 29, 41, 1)
                                  ]),
                            ),
                            child: InkWell(
                                onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => DisneyPage()));},
                                child: Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Image.asset('assets/generos/disney.png',fit: BoxFit.cover))),
                    )))),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: AspectRatio(
                          aspectRatio: 1.1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  stops: [0.6, 1.0],
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [Color.fromRGBO(45, 48, 69, 1),Color.fromRGBO(26, 29, 41, 1)
                                  ]),
                            ),
                            child: InkWell(
                                onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>PixarPage()));},
                                child: Padding(
                                  padding: EdgeInsets.all(7),
                                  child: Image.asset('assets/generos/pixar.png',fit: BoxFit.cover))),
                    )))),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: AspectRatio(
                          aspectRatio: 1.1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  stops: [0.6, 1.0],
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [Color.fromRGBO(45, 48, 69, 1),Color.fromRGBO(26, 29, 41, 1)
                                  ]),
                            ),
                            child: InkWell(
                                onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>MarvelPage()));},
                                child: Image.asset('assets/generos/marvel.png',fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: AspectRatio(
                          aspectRatio: 1.1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  stops: [0.6, 1.0],
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [Color.fromRGBO(45, 48, 69, 1),Color.fromRGBO(26, 29, 41, 1)
                                  ]),
                            ),
                            child: InkWell(
                                onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => StarWarsPage()));},
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/generos/starwars.png',fit: BoxFit.cover))),
                    )))),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: AspectRatio(
                          aspectRatio: 1.1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  stops: [0.6, 1.0],
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [Color.fromRGBO(45, 48, 69, 1),Color.fromRGBO(26, 29, 41, 1)
                                  ]),
                            ),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) =>NatGeoPage()));},
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/generos/natgeo.png',fit: BoxFit.cover))),
                    ))))
                ]),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Recomendado para Você",
                      style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 160,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/6.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/2.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/3.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/4.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/1.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset(
                            'assets/posteres/starwars/8.jpg',fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text("Novidades no Disney+",
                      style: TextStyle(color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 160,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/disney/1.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/disney/2.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/4.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/12.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/disney/5.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/10.jpg',fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text("Continue Assistindo",
                      style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 7),
                  height: 300,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(borderRadius: BorderRadius.circular(5),
                          child: SizedBox(width: 360,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Stack(children: [
                                    Image.asset('assets/posteres/carrossel/5.jpg',fit: BoxFit.fitWidth),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      left: 0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white70),
                                            margin: EdgeInsets.symmetric(horizontal:16),
                                            child: Icon(Icons.play_arrow_rounded,color: Color.fromARGB( 255,19,22,31))),
                                          Column(
                                            crossAxisAlignment:CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 16,vertical:12),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child:LinearProgressIndicator(
                                                    value: 0.5,
                                                    backgroundColor:Colors.white38,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                  ))]),
                                  Container(
                                    color: Color.fromARGB(255, 19, 22, 31),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Star Wars: A Ameaça Fantasma (Episódio I)",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight:FontWeight.bold)),
                                          SizedBox(height: 11),
                                          Text("Restam 1h1min",style: TextStyle(color: Color.fromARGB(255,150, 151, 156),fontSize: 12,fontWeight:FontWeight.bold))
                      ])))])))),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(borderRadius: BorderRadius.circular(5),
                          child: SizedBox(width: 360,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Stack(children: [
                                    Image.asset('assets/posteres/carrossel/3.jpg',fit: BoxFit.fitWidth),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      left: 0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white70),
                                            margin: EdgeInsets.symmetric(horizontal:16),
                                            child: Icon(Icons.play_arrow_rounded,color: Color.fromARGB( 255,19,22,31))),
                                          Column(
                                            crossAxisAlignment:CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 16,vertical:12),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),
                                                  child:LinearProgressIndicator(
                                                    value: 0.3,
                                                    backgroundColor:Colors.white38,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                  ))]),
                                  Container(
                                    color: Color.fromARGB(255, 19, 22, 31),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Avatar",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight:FontWeight.bold)),
                                          SizedBox(height: 11),
                                          Text("Restam 1h37min",style: TextStyle(color: Color.fromARGB(255,150, 151, 156),fontSize: 12,fontWeight:FontWeight.bold))
                      ])))])))),
                ])),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text("Marvel em Destaque",style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 160,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/1.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/7.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/9.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/4.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/2.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/marvel/12.jpg',fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text("Coleção: Star Wars",style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 160,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/1.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/2.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/3.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/4.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/5.jpg',fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset('assets/posteres/starwars/6.jpg',fit: BoxFit.cover),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
