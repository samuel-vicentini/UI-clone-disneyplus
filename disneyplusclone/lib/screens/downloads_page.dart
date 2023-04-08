// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);
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
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
               Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    child: Text("Downloads", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(242, 255, 255, 255))),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Icon(
                          Icons.download_for_offline_outlined,
                          color: Colors.white.withOpacity(0.33),
                          size: 170.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 15.0,),
                        child: Text(
                            "Você não tem downloads",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,fontSize: 18.0, fontWeight: FontWeight.bold)
                        ),
                      ),
                      Text(
                          "Os filmes e as séries que você baixar aparecerão aqui.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white.withOpacity(0.5),
                            fontSize: 15.0, fontWeight: FontWeight.bold,)
                      ),
                    ],
                  ),
                )
            ],
          )
        )
      )
    );
  }
}