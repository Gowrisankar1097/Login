import 'package:flutter/material.dart';
class Griddd extends StatefulWidget {
  const Griddd({Key? key}) : super(key: key);

  @override
  State<Griddd> createState() => _GridddState();
}

class _GridddState extends State<Griddd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(crossAxisCount: 3,
            children: [

              Padding(
                padding:  EdgeInsets.only(left: 20,right: 10,bottom: 10),
                child: ElevatedButton(onPressed: (){}, child: Text("1")),
              ),
              ElevatedButton(onPressed: (){}, child: Text("2")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
              ElevatedButton(onPressed: (){}, child: Text("1")),
            ],
        ),
      ),

    );
  }
}
