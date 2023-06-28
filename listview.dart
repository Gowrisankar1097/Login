import 'package:flutter/material.dart';
class Listtvieww extends StatefulWidget {
  const Listtvieww({Key? key}) : super(key: key);

  @override
  State<Listtvieww> createState() => _ListtviewwState();
}

class _ListtviewwState extends State<Listtvieww> {
  final List<String>c=<String>[""];
  TextEditingController a=TextEditingController();
void b(){

  setState(() {

    c.add(a.text);

  });
}

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          TextFormField(
              controller: a,
             // autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Enter value')
          ),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){
           b();
          }, child:Text("OK")),
          SizedBox(height: 100,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(border: Border.all()
            ),
             child:
            ListView.builder(
                scrollDirection:Axis.vertical,

                itemCount: c.length,
              //  prototypeItem: ListTile(title: Text(c.last),),
                itemBuilder: (BuildContext context,int index )

                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(c[index]),
                  );



                }






            ),
          )
        ],
      ),
    );
  }
}




