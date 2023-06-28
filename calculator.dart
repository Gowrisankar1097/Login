import 'package:flutter/material.dart';


class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {

  final ctl = TextEditingController();
  String num1 = "";
  String num2 = "";
  bool clk = false;
  String opt = " ";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: ctl,),
          ElevatedButton(onPressed: (){
            if(clk)
              {
                num2 += "1";
                ctl.text = num2;
              }
            else
              {
                num1 += "1";
                ctl.text = num1;
              }

          }, child: Text("1")),
          ElevatedButton(onPressed: (){
            if(clk)
            {
              num2 += "2";
              ctl.text = num2;
            }
            else
            {
              num1 += "2";
              ctl.text = num1;
            }

          }, child: Text("2")),
          ElevatedButton(onPressed: (){

            clk = true;
            opt = "+";
            ctl.text ="+";


          }, child: Text("+")),
          ElevatedButton(onPressed: (){
            if(opt == "+")
              {
                int a = int.parse(num1);
                int b = int.parse(num2);

                int r = a+b ;

                ctl.text = r.toString();


              }

          }, child: Text("=")),
        ],
      ),
    );
  }
}
