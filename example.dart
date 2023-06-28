import 'package:flutter/material.dart';
class Calcul extends StatefulWidget {
  const Calcul({Key? key}) : super(key: key);

  @override
  State<Calcul> createState() => _CalculState();
}

class _CalculState extends State<Calcul> {
  TextEditingController textController =TextEditingController();
Widget calbutton(String btnText,Color btncolor,Color txtcolor){
  return Container(
    height: 80,
    width: 80,
    child:ElevatedButton(onPressed: (){
          calculation(btnText);
    }, child: Text(btnText,style: TextStyle(
      fontSize: 35,

    ),),
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
      backgroundColor: btncolor,
      padding: EdgeInsets.all(20)
    ),
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Text("Calculator"),backgroundColor: Colors.black,
      ),
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(

            mainAxisAlignment: MainAxisAlignment.end,
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                    fontSize: 50),),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                calbutton('C', Colors.grey, Colors.black),
                calbutton('%', Colors.grey, Colors.black),
                calbutton('/', Colors.grey, Colors.black),
                calbutton('*', Colors.grey, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                calbutton('7', Colors.grey, Colors.black),
                calbutton('8', Colors.grey, Colors.black),
                calbutton('9', Colors.grey, Colors.black),
                calbutton('-', Colors.grey, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                calbutton('4', Colors.grey, Colors.black),
                calbutton('5', Colors.grey, Colors.black),
                calbutton('6', Colors.grey, Colors.black),
                calbutton('+', Colors.grey, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                calbutton('1', Colors.grey, Colors.black),
                calbutton('2', Colors.grey, Colors.black),
                calbutton('3', Colors.grey, Colors.black),
                calbutton('', Colors.grey, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //calbutton('0', Colors.grey, Colors.black),
                //calbutton('.', Colors.grey, Colors.black),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      shape: StadiumBorder(),
                        padding: EdgeInsets.fromLTRB(34, 20, 128, 20)
                    ), child: Text("0",
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white
                      ),),

                ),
                calbutton('.', Colors.grey, Colors.black),
                calbutton('=', Colors.grey, Colors.black),
              ],
            ),
          ],
        ),
      ),
    );

  }
  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';

    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
        finalResult = add();
      } else if( preOpr == '-') {
        finalResult = sub();
      } else if( preOpr == 'x') {
        finalResult = mul();
      } else if( preOpr == '/') {
        finalResult = div();
      }

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if(opr == '+') {
        finalResult = add();
      } else if( opr == '-') {
        finalResult = sub();
      } else if( opr == 'x') {
        finalResult = mul();
      } else if( opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalResult = result;
    }

    else if(btnText == '+/-') {
      result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
      finalResult = result;

    }

    else {
      result = result + btnText;
      finalResult = result;
    }


    setState(() {
      text = finalResult;
    });

  }


  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

}

