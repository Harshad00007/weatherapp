import 'package:flutter/material.dart';
import 'package:weatherapp/custom_wid/divider.dart';
import 'package:weatherapp/data/image_path.dart';
import '../custom_wid/apptext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _clicked=false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(top: 65, left: 20, right: 20, bottom: 20),
        height: size.height,
        width: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(background[0]),
          ),
        ),
        child: Stack(
          children: [
           _clicked==true?   Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Container(
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:BorderSide(color: Colors.white)
                    ),

                      focusedBorder: UnderlineInputBorder(
                          borderSide:BorderSide(color: Colors.white)
                      ),
                  ),
                ),
              ),
            ):
               SizedBox.square(),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Apptext(
                              data: "Dubai",
                              color: Colors.white,
                              fontweight: FontWeight.w700,
                              fontsize: 18,
                            ),
                            Apptext(
                              data: "Good Morning",
                              fontsize: 14,
                              fontweight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      _clicked=!_clicked;
                    });

                  }, icon: Icon(Icons.search,size: 32,),)
                ],
              ),
            ),

            Align(alignment: Alignment(0,-0.7),
                child: Image.asset(imagepath[0])),
            Align(alignment: Alignment(0, 0),
              child: Container(
                height: 130,
                // width: 130,
                child: Column(
                  children: [
                    Apptext(
                      data: "21°C",color: Colors.white,fontweight: FontWeight.bold,fontsize: 32,
                    ),
                    Apptext(
                      data: "Summer",color: Colors.white,fontweight: FontWeight.w600,fontsize: 26,
                    ),
                    Apptext(
                      data: DateTime.now().toString(),color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Align(alignment: Alignment(0,0.75),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20)
                ),
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/temperature-high.png",height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Apptext(
                                  data: "Temp Max",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                                Apptext(
                                  data: "21°C",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.asset("assets/images/temperature-low.png",height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Apptext(
                                  data: "Temp Min",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                                Apptext(
                                  data: "21°C",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                    CustomDivider(
                      startIndent: 20,
                      endIndent: 20,
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/sun.png",height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Apptext(
                                  data: "Sunrise",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                                Apptext(
                                  data: "21°C",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.asset("assets/images/moon.png",height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Apptext(
                                  data: "Sunset",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                                Apptext(
                                  data: "21°C",color: Colors.white,fontsize: 14,fontweight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
