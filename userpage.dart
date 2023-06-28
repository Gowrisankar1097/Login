import 'package:flutter/material.dart';
class Userpagee extends StatefulWidget {
  const Userpagee({Key? key}) : super(key: key);

  @override
  State<Userpagee> createState() => _UserpageeState();
}

class _UserpageeState extends State<Userpagee> {
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

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(


        leading: Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.white,
        title:

        Text("cristiano",style: TextStyle(color: Colors.black),),
        actions: [
          Icon(Icons.list_outlined,color: Colors.black,)
        ],

      ),
      body:


      DefaultTabController(


        length: 3,
        child: NestedScrollView(  headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(

              backgroundColor: Colors.white,
            // floating: false,
              snap: true,
              pinned: true,
              floating: true,
             //snap: true,
             // centerTitle: false,
              expandedHeight:250,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  SizedBox(height: 100,),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/flower1.jpg",),
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
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text("51",style: TextStyle(color: Colors.black,fontSize: 15),),
                            Text("Posts",style: TextStyle(color:Colors.black,fontSize: 10),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text("500",style: TextStyle(color: Colors.black,fontSize: 15),),
                            Text("Flower",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text("500",style: TextStyle(color: Colors.black,fontSize: 15),),
                            Text("Follwers",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ],
                        ),
                      ),


                    ],

                  ),
                  Text("Flower",style: TextStyle(color: Colors.black,fontSize:10),),
                  Text("Follwers",style: TextStyle(color: Colors.black,fontSize: 10),),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SizedBox(
                          height: 25,
                          width: 100,
                          child: ElevatedButton(

                              style: ElevatedButton.styleFrom(

                                primary: Colors.white,


                                shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(5)

                                ),



                              ),onPressed: (){}, child: Text("Following",style: TextStyle(color: Colors.black,),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SizedBox(
                            height: 25,
                            width: 95,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(

                              primary: Colors.white,


                              shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(5)
                              ),

                            ),onPressed: (){}, child: Text("Message",style: TextStyle(color: Colors.black,),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SizedBox(
                            height: 25,
                            width: 40,

                            child: ElevatedButton(style: ElevatedButton.styleFrom(

                              primary: Colors.white,


                              shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(5)

                              ),
                            ),
                                onPressed: (){}, child: Icon(Icons.person_remove,color: Colors.black,size: 15,))),
                      ),


                    ],
                  )


                  //  Text("Following",style: TextStyle(color: Colors.black),)
                ],
              ),),
              bottom:
              TabBar(

                  tabs: [

                    Icon(Icons.add_box_outlined,color: Colors.black,size: 30,),
                    Icon(Icons.ondemand_video,color: Colors.black,size: 30,),
                    Icon(Icons.perm_contact_cal_rounded,color: Colors.black,size: 30,)
                  ]),
              collapsedHeight: 200,
            ),
          ];
        }, body:

        TabBarView(

          children: [

            Container(
              // height: 600,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,

                    //childAspectRatio: 1.03,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                  itemCount: a.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children: [

                        SizedBox(height: 2,),
                        Container(

                          height:128,
                          width: 128,

                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage(a[index]),
                                  fit: BoxFit.fill)),

                        ),
                        //Text(d[index]),
                      ],
                    );

                  }),
            ),
            Container(
              //height: 500,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // childAspectRatio: 4 /4,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                  itemCount: a.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children: [
                        SizedBox(height: 2,),
                        Container(

                          height:128,
                          width: 128,

                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage(a[index]),
                                  fit: BoxFit.fill)),

                        ),
                        //Text(d[index]),
                      ],
                    );

                  }),
            ),
            Container(
              //height: 500,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    //childAspectRatio: 4 /4,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                  itemCount: a.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children: [
                        SizedBox(height: 2,),
                        Container(
                          height:128,
                          width: 128,

                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage(a[index]),
                                  fit: BoxFit.fill)),

                        ),
                        //Text(d[index]),
                      ],
                    );

                  }),
            ),




          ],
        )),
      ),
    );
  }
}
