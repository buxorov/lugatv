import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/lugat.dart';

class HomeScreen extends StatefulWidget {
  static const String rouneName="HomeScreen";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Icon(Icons.add),
        title: Text("Ingliz-Uzbek Lug'at",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [Icon(Icons.paste_rounded)],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                height:50,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                child: Center(
                  child: TextField(controller: searchcontroller,decoration: const InputDecoration(
                    hintText: "Search of this app",
                    icon: Icon(Icons.mic),
                    suffixIcon: Icon(Icons.arrow_back)

                  ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          LugatWidget(),
          SizedBox(height: 5,),
          LugatWidget(),
          SizedBox(height: 2,),
          LugatWidget(),
          SizedBox(height: 1,),
          LugatWidget(),
          SizedBox(height: 5,),
          LugatWidget(),
          SizedBox(height: 5,),
          LugatWidget(),
          SizedBox(height: 2,),
          LugatWidget(),

        ],
      ),
    );
  }
}
