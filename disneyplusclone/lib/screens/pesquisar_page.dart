// ignore_for_file: prefer_const_constructors,, prefer_const_literals_to_create_immutables 
import 'package:flutter/material.dart';

class PesquisarPage extends StatelessWidget {
  const PesquisarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 48, 69, 1),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: [0.0, 1.0],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [Color.fromRGBO(45, 48, 69, 1), Color.fromRGBO(26, 29, 41, 1)]
            ),
          ),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10,28,10,20),
                      child: Container(
                        height: 45,
                        color: Color.fromRGBO(31, 31, 31, 1),
                        child: TextField(
                          style: TextStyle(color: Color.fromARGB(246, 255, 255, 255)), 
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 17),
                            prefixIcon: Icon(Icons.search, color: Color.fromARGB(246, 255, 255, 255)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            hintText: 'Pesquisar',
                            hintStyle: TextStyle(color: Color.fromARGB(246, 255, 255, 255)),
                          ),
                        )
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 1),
                          child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset('assets/pesquisar/originais.png',width: 105,height: 105)),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 1),
                          child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset('assets/pesquisar/filmes.png',width: 105,height: 105)),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 1),
                          child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset('assets/pesquisar/series.png',width: 105,height: 105)),
                        ),
                    ]),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      alignment: Alignment.centerLeft, 
                      child: Text("Explorar", style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: 15.5)
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/2.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/1.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/4.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/3.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/5.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/6.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/7.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/8.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/9.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/10.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/11.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/12.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/13.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/14.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/15.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/16.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/17.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/18.png',width: 170, height: 250)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/19.png',width: 170, height: 250)),
                            ClipRRect(borderRadius: BorderRadius.circular(8),child:  Image.asset('assets/pesquisar/colecao/20.png',width: 170, height: 250)),
                          ],
                        ),
                      ],
                    )
                ],
              ),
          ),
          )
        )
      );
  }
}