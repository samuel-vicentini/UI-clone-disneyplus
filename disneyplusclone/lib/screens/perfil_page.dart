// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 127,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 48,
                            backgroundColor: Colors.white,
                            child: Image.asset('assets/perfil/mandalorian.png', fit: BoxFit.cover, width: 88,height: 87)),
                          SizedBox(height: 9),
                          Text("Xandao", style: TextStyle(fontSize: 18, color: Colors.white),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Image.asset('assets/perfil/darthvader.png', fit: BoxFit.cover, width: 95,height: 95),
                          SizedBox(height: 9),
                          Text("Ednei", style: TextStyle(fontSize: 18, color: Colors.white),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Image.asset('assets/perfil/frozen.png', fit: BoxFit.cover, width: 95,height: 95),
                          SizedBox(height: 9),
                          Text("Júlia", style: TextStyle(fontSize: 18, color: Colors.white),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Image.asset('assets/perfil/panda.png', fit: BoxFit.cover, width: 95,height: 95),
                          SizedBox(height: 9),
                          Text("Luciana", style: TextStyle(fontSize: 18, color: Colors.white),)
                        ],
                      ),
                    ),
                  ],
                ),
              ), 
              SizedBox(height: 20),
              Center(child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(173,50)),
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(63, 66, 75, 1))
                  ),
                  onPressed: (){}, 
                  child: Text("E D I T A R  P E R F I S")
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 37),
                child: Text("Minha Lista", style: TextStyle(color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 35),
                child: Text("Configurações do Aplicativo", style: TextStyle(color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 35),
                child: Text("Conta", style: TextStyle(color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 35),
                child: Text("Avisos Legais", style: TextStyle(color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 35),
                child: Text("Ajuda", style: TextStyle(color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 35),
                child: Text("Sair", style: TextStyle(color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 35),
                child: Text("Versão: 2.9.1-rc1 (2207130)", style: TextStyle(color: Colors.white38, fontSize: 15.5, fontWeight: FontWeight.bold))
              )
           ])
        )
      )
    );
  }
}