import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Custom_Classes/CustomColor.dart';
import '../HomeScreens/HomeScreen.dart';
import 'CustomContainer.dart';
import 'intropage2.dart';


class IntroPage1 extends StatelessWidget {
  PageController _controller=PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              CustomContainer(),
              Positioned(
                  top: -10,
                  left: -150,
                  child: Image(
                    image: AssetImage('assets/images/boardingbg.png'),
                  )),

              SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 400,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                        width: double.infinity,
                        height: 320,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(21)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Text('Book a Local',style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(height: 10,),
                            Text('You can book private city tours with\n local on-the-go and experience a\n new place like never before.',style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600

                            ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20,),
                            SmoothPageIndicator(
                              controller: _controller,
                              count: 3,
                              effect: SlideEffect(
                                  dotHeight: 8,
                                  dotWidth: 8,
                                  dotColor: Colors.grey ,
                                  activeDotColor:AppColor.bodycolor
                              ),
                            ),
                            SizedBox(height: 20,),
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)
                                      )
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage2(),));

                                  },
                                  child: Text('Get Started',style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600

                                  ),)),
                            ),
                            SizedBox(height: 10,),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                            }, child: Text('Skip for now',style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600

                            ),))
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )
    );
  }
}
