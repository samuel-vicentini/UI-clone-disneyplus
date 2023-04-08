// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:prova2tri_disneyplusclone/screens/downloads_page.dart';
import 'package:prova2tri_disneyplusclone/screens/home_page.dart';
import 'package:prova2tri_disneyplusclone/screens/perfil_page.dart';
import 'package:prova2tri_disneyplusclone/screens/pesquisar_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int indice = 0;
  final List<Widget> filhos = [
    HomePage(),
    PesquisarPage(),
    DownloadPage(),
    PerfilPage(),
  ];
  void onTabTapped(int ind){
    setState(() {
      indice =  ind;
    });  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: filhos[indice],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: indice,
          showUnselectedLabels: false,
          showSelectedLabels:  false,
          iconSize: 32,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color.fromRGBO(26, 29, 41, 1),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, ),label: 'home',),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded, ),label: 'pesquisar',),
            BottomNavigationBarItem(icon: Icon(Icons.download_rounded, ),label: 'download',),
            BottomNavigationBarItem(
              label: 'perfil',
              icon: Container(
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white70, width: 1.5)
                ),
                child: Image.asset('assets/perfil/mandalorian.png'),
              ),
            ),
          ],
        ),
    );
  
  }
}