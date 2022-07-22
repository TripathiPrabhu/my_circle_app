import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../SignIn_Screen.dart';
import '../helpers/Onboarding_Mockup_Card.dart';

class OnboardingMockupScreen extends StatefulWidget {

  @override
  State<OnboardingMockupScreen> createState() => _OnboardingMockupScreenState();
}

class _OnboardingMockupScreenState extends State<OnboardingMockupScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // backgroundColor: Colors.green,
        body: Stack(
          children: [
            CarouselSlider(

              options: CarouselOptions(
                autoPlayInterval: Duration(seconds: 4),
                  viewportFraction: 1.1,
                autoPlay: true,
                  height: MediaQuery.of(context).size.height),

              items:
              [
                MockupCard(
                toptext: Text('Free Account Feature',
                  style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),

/////////Card 1 Content/////////////////////////////
                card1text: Text('My Circle Free',
                  style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                Icon1: Icon(Icons.ac_unit,color: Colors.white,size: 35,),

/////////Card 2 Content/////////////////////////////
                card2text: Center(child: Text('Basic Search\nFilters',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                Icon2: Icon(Icons.search,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                card3text: Center(child: Text('20 daily profile\ncards',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                Icon3: Icon(Icons.contact_mail_outlined,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                card4text: Center(child: Text('Design a Digital\nBusiness Card',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                Icon4: Icon(Icons.event_note,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                card5text: Center(child: Text('1 Daily\nIntroduction',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                Icon5: Icon(Icons.back_hand,color: Colors.white,size: 35,),



              ),
                MockupCard(
                  toptext: Text('Free Account Feature',
                    style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),

/////////Card 1 Content/////////////////////////////
                  card1text: Text('My Circle Free',
                    style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                  Icon1: Icon(Icons.ac_unit,color: Colors.white,size: 35,),

/////////Card 2 Content/////////////////////////////
                  card2text: Center(child: Text('Basic Search\nFilters',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon2: Icon(Icons.search,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card3text: Center(child: Text('20 daily profile\ncards',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon3: Icon(Icons.contact_mail_outlined,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card4text: Center(child: Text('Design a Digital\nBusiness Card',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon4: Icon(Icons.event_note,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card5text: Center(child: Text('1 Daily\nIntroduction',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon5: Icon(Icons.back_hand,color: Colors.white,size: 35,),



                ),
                MockupCard(
                  toptext: Text('Free Account Feature',
                    style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),

/////////Card 1 Content/////////////////////////////
                  card1text: Text('My Circle Free',
                    style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                  Icon1: Icon(Icons.ac_unit,color: Colors.white,size: 35,),

/////////Card 2 Content/////////////////////////////
                  card2text: Center(child: Text('Basic Search\nFilters',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon2: Icon(Icons.search,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card3text: Center(child: Text('20 daily profile\ncards',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon3: Icon(Icons.contact_mail_outlined,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card4text: Center(child: Text('Design a Digital\nBusiness Card',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon4: Icon(Icons.event_note,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card5text: Center(child: Text('1 Daily\nIntroduction',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon5: Icon(Icons.back_hand,color: Colors.white,size: 35,),



                ),
                MockupCard(
                  toptext: Text('Free Account Feature',
                    style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),

/////////Card 1 Content/////////////////////////////
                  card1text: Text('My Circle Free',
                    style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                  Icon1: Icon(Icons.ac_unit,color: Colors.white,size: 35,),

/////////Card 2 Content/////////////////////////////
                  card2text: Center(child: Text('Basic Search\nFilters',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon2: Icon(Icons.search,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card3text: Center(child: Text('20 daily profile\ncards',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon3: Icon(Icons.contact_mail_outlined,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card4text: Center(child: Text('Design a Digital\nBusiness Card',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon4: Icon(Icons.event_note,color: Colors.white,size: 35,),

/////////Card 3 Content/////////////////////////////
                  card5text: Center(child: Text('1 Daily\nIntroduction',
                    style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon5: Icon(Icons.back_hand,color: Colors.white,size: 35,),



                ),].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        decoration: BoxDecoration(
                        ),
                       child: i,
                    );
                  },
                );
              }).toList(),
            ),


            Positioned(
              bottom: 40,
              left: 15,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Color(0XFF019DA2),
                          Color(0Xff009CFF)],
                      )

                  ),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                  },
                      child: Text('SKIP',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

// MockupCard(
// toptext: Text('Free Account Feature',
// style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
//
// /////////Card 1 Content/////////////////////////////
// card1text: Text('My Circle Free',
// style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
// Icon1: Icon(Icons.ac_unit,color: Colors.white,size: 35,),
//
// /////////Card 2 Content/////////////////////////////
// card2text: Center(child: Text('Basic Search\nFilters',
// style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
// Icon2: Icon(Icons.search,color: Colors.white,size: 35,),
//
// /////////Card 3 Content/////////////////////////////
// card3text: Center(child: Text('20 daily profile\ncards',
// style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
// Icon3: Icon(Icons.contact_mail_outlined,color: Colors.white,size: 35,),
//
// /////////Card 3 Content/////////////////////////////
// card4text: Center(child: Text('Design a Digital\nBusiness Card',
// style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
// Icon4: Icon(Icons.event_note,color: Colors.white,size: 35,),
//
// /////////Card 3 Content/////////////////////////////
// card5text: Center(child: Text('1 Daily\nIntroduction',
// style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
// Icon5: Icon(Icons.back_hand,color: Colors.white,size: 35,),
//
//
//
// );
