import 'package:flutter/material.dart';

void main(){
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,appBar: AppBar(
          title: const Text('Aktif Bergerak'),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color:const Color(0xFFF3E8D8),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1519681393784-d120267933ba',
                        width: 130,
                        height: 145,
                        fit: BoxFit.cover,
                      ),
                    )
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FITNESS CENTER',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            )
                          )
                          SizedBox(height:8),
                          Text(
                            'Arena Fit',
                            style:TextStyle(
                              fontSize:23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.brown,
                                size: 17,
                              ),
                            ]
                          )

                        ]
                      )
                    )
                  ],
                )
              )
            ],
          )
        )
      ),
    )
  }
}