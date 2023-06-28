import 'package:flutter/material.dart';

//import 'color.dart';

class spotfi extends StatefulWidget {
  const spotfi({Key? key}) : super(key: key);

  @override
  State<spotfi> createState() => _spotfiState();
}

class _spotfiState extends State<spotfi> {
  List a=[

        "assets/f1.jpg",
        "assets/f2.jpg",
        "assets/f3.jpg",
        "assets/f4.jpg",
        "assets/f5.jpg",
        "assets/f6.jpg",
        "assets/f7.jpg",
        "assets/f8.jpg",
        "assets/f9.jpg",
        "assets/f10.jpg",
        "assets/f11.jpg",
        "assets/f12.jpg",
        "assets/f13.jpg",
        "assets/f14.jpg",
        "assets/f15.jpg",
        "assets/f16.jpg",


  ];
  List b=[
    "Bloody Sweet",
    "Arabic kuthu-Halamithi habibo",
    "Kadhal oru Aagayam",
    "Jimikki ponnu",
    "Kan Irandil",
    "Idhazhin Oram",
    "Sakkarakatti",
    "Dippam Dippam",
    "Dreamers",
    "Kanave Kanave",
    "Neeyum Naanum",
    "Vikram-Title track",
    "Lokiverse-Background Score",
    "Kannala Kannala",
    "Thenmozhi(From Thiruchitrambalam)",
    "Takkunu Takkunu",
  ];
  List c=[
    "Aniruth Ravichandar,Siddharth Basrur",
    "Aniruth Ravichandar,Jonita Gandhi",
    "Hiphop Tamizha,Teejay,AI Rufian",
    "Thaman,S.Aniruth Ravichandar,Jonita Gandhi",
    "Vijay antony,Naresh Iyer",
    "Aniruth Ravichandar,Rajesh",
    "Hippop Tamizha",
    "Aniruth Ravichandar,Andhony Daasan",
    "Jung Kook,BTS,FIFA Sound",
    "Aniruth Ravichandar",
    "Hiphop Tamizha,Raghu Dixit,Sathayaprakash",
    "Aniruth Ravichandar",
    "Aniruth Ravichandar",
    "Hiphop Tamizha Kaushik Krish,Padmaladha",
    "Santhish Narayanan,Aniruth Ravichandar",
    "Hiphop Tamizha,Raghu Dixit,Sathayaprakash",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


      body:

      NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: true,
              leading: Icon(Icons.arrow_back,color: Colors.grey,),

              backgroundColor: Colors.black,

              expandedHeight:258.0,
             // floating: true,
              //pinned: true,
             //snap: false,
              stretch: false,
              //snap: true,


              flexibleSpace:

               FlexibleSpaceBar(



                  centerTitle: true,
                  title:Column(
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 300,
                              // decoration: BoxDecoration(
                              //
                              // ),
                              child:  TextFormField(
                                textAlign: TextAlign.start,

                                style: TextStyle(fontSize: 15,color: Colors.white),

                                decoration:   InputDecoration(filled: true,
                                  fillColor: Color(0xFF6f6f6f),
                                  border:OutlineInputBorder(

                                   borderRadius: BorderRadius.circular(5),
                                  ),
                                    hintText: 'Search Find Playlist',

                                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                                   // suffixIcon: Icon(Icons.document_scanner_rounded,)
                                ),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 36,
                            width: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF6f6f6f),
                                shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(5)

                                ),

                              ),
                                onPressed: (){}, child: Text("Sort",style: TextStyle(color: Colors.grey),)),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Stack(
                        children:[
                          Container(
                            // alignment: Alignment.topCenter,
                            height: 220,
                            width: 220,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/f17.jpeg",),
                                    fit: BoxFit.fill)),
                            // child: Row(
                            //9940564574
                            //
                            //   children: [
                            //
                            //     Text("Follwers",style: TextStyle(fontSize: 8,color: Colors.black),),
                            //     Text("Follwers",style: TextStyle(fontSize: 8,color: Colors.black),),
                            //     Text("Follwers",style: TextStyle(fontSize: 8,color: Colors.black),),
                            //
                            //   ],
                            // ),
                          ),
                          Positioned(
                            top: 10,
                            child: Container(

                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  // border: Border.all(),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("assets/f1.jpg"),fit: BoxFit.fill)
                              ),
                              //child: Icon(Icons.share),
                            ),),
                          Positioned(
                            bottom: 5,
                              child: Text("Aniruth Ravichandar"))
                        ],
                      ),
                      SizedBox(height: 30,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(


                              text: TextSpan(
                                text: 'Hiphop Tamizha,',
                                style: TextStyle(decoration:TextDecoration.underline,
                                    color: Colors.green),
                                children: const <TextSpan>[
                                  TextSpan(text: 'Naresh Iyer',
                                      style: TextStyle(decoration: TextDecoration.underline,
                                          color: Colors.green)),
                                  TextSpan(text: ' and',style: TextStyle(color: Colors.grey)),
                                  TextSpan(text: 'Vijay Antony',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.green))
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/flower1.jpg"),fit: BoxFit.fill)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Spotify",style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("3h 11min",style: TextStyle(color: Colors.grey),),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite_border,color: Colors.grey,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_circle_down,color: Colors.grey,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.more_vert,color: Colors.grey,),
                              )
                            ],
                          ),
                        ],
                      ),
                    )

                    ],
                  ),
                  stretchModes: [
                    StretchMode.blurBackground,
                  ],

                  // Text("hi",
                  //   //textScaleFactor: 1.0,
                  //   style: TextStyle(color: Colors.white),),
                 background: Container(
                   decoration: BoxDecoration(
                       gradient: LinearGradient(
                           colors: [Color(0xFF554f4f),Color(0xFF272526),Colors.black],
                           begin: Alignment.topCenter,

                           end: Alignment.bottomCenter)),

                       //child:Image(image: AssetImage("assets/f16.jpg"),fit: BoxFit.scaleDown,)
                   // Container(
                   //
                   //
                   //   decoration: BoxDecoration(
                   //       image: DecorationImage(image: AssetImage("assets/f16.jpg"),fit: BoxFit.scaleDown)),
                   // )
                 ),



              ),
             title:  Text("Aniruth ravichandar",style: TextStyle(color: Colors.grey),),
             // leading: Icon(Icons.arrow_back),
              collapsedHeight: 550,
            ),
          ];
        }, body:
      ListView.builder(
        itemCount: a.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(

                                  image:DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill) ),

                            ),

            title: Text(b[index],style: TextStyle(color: Colors.white),),
            subtitle: Text(c[index],style: TextStyle(color: Colors.grey),),
            trailing: Icon(Icons.more_vert,color: Colors.grey,),
          );
        },
      ),




      ),

    );
  }
}





