import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oloha/Custom_Classes/CustomColor.dart';

import '../Custom_Classes/CustomText.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5),
                          child: CustomText(text: 'Honoi, Veitnam',size: 18,fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.cloud_outlined,size: 24,color: Colors.grey,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CustomText(text: '17 C',size: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10 ,top: 5),
                          child: Icon(Icons.search,size: 30,),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                // STORY SECTION
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right:10),
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(21),
                          border: Border.all(color: AppColor.bodycolor,width:2)
                        ),
                        child: Container(
                          margin: EdgeInsets.only(right: 2,left: 2),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: ExactAssetImage('assets/images/circleavatarimg.jpg'),
                          ),
                        ),
                      ),
                    );
                  },),
                ),
                SizedBox(height: 10,),
                Divider(height: 1,indent: 25,endIndent: 25,color: Colors.grey.shade300),
                SizedBox(height: 10,),
                //HIGHLIGHTS SECTION
                Container(
                  height: 300,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 3,
                      itemBuilder:(context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(text: 'Experience in spotlight', size: 18, fontWeight: FontWeight.w600),
                              SizedBox(height: 10,),
                              Stack(
                                children:[
                                  Container(
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images/circleavatarimg.jpg')
                                    )
                                  ),
                                ),
                                  Positioned(
                                    right: 5,
                                      top: 2,
                                      child: IconButton(onPressed: (){},icon: FaIcon(FontAwesomeIcons.heart,color: Colors.white,),))
                                ]
                              ),
                              CustomText(text: 'Coffee  Cultural Coffee', size: 14, fontWeight: FontWeight.w400,color: Colors.grey,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CustomText(text: 'Unique Egg Coffe Class\n with Local', size: 18, fontWeight: FontWeight.w400),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade500,
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              CustomText(text: '4.5', size: 12, fontWeight: FontWeight.normal,color: Colors.white,),
                                              Icon(Icons.star,color: Colors.white,size: 16,)
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            CustomText(text: '\$ 28', size: 12, fontWeight: FontWeight.normal,color: AppColor.bodycolor,),
                                            SizedBox(height: 5,),
                                            CustomText(text: '/person', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                            ],
                          ),
                        );
                      }, ),

                ),
                Divider(height: 1,indent: 25,endIndent: 25,color: Colors.grey.shade300),
                SizedBox(height: 30,),
                //CATEGORY SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                        // color: Colors.green
                      ),
                      child: Stack(
                          children:[
                            Positioned(
                              top:10,
                              left: 10,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 2,color: Colors.grey),
                                    borderRadius: BorderRadius.circular(11)
                                ),
                              ),
                            ),
                            Positioned(
                                top:40,
                                left: 40,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.bodycolor
                                  ),
                                )),
                            Positioned(
                                top:30,
                                left: 30,
                                child: Center(
                                  child: Icon(
                                      Icons.fastfood_outlined,
                                    size: 30,
                                  ),
                                )),
                            Positioned(
                              bottom: -5,
                                left: 22,
                                child: CustomText(text: 'Foods',size: 16,fontWeight: FontWeight.w400,))
                          ]
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                        // color: Colors.green
                      ),
                      child: Stack(
                          children:[
                            Positioned(
                              top:10,
                              left: 10,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 2,color: Colors.grey),
                                    borderRadius: BorderRadius.circular(11)
                                ),
                              ),
                            ),
                            Positioned(
                                top:40,
                                left: 40,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.bodycolor
                                  ),
                                )),
                            Positioned(
                                top:30,
                                left: 30,
                                child: Center(
                                  child: Icon(
                                      Icons.shopping_cart_outlined,
                                    size: 30,
                                  ),
                                )),
                            Positioned(
                                bottom: -5,
                                left: 20,
                                child: CustomText(text: 'Groceries',size: 16,fontWeight: FontWeight.w400,))
                          ]
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                        // color: Colors.green
                      ),
                      child: Stack(
                          children:[
                            Positioned(
                              top:10,
                              left: 10,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 2,color: Colors.grey),
                                    borderRadius: BorderRadius.circular(11)
                                ),
                              ),
                            ),
                            Positioned(
                                top:40,
                                left: 40,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.bodycolor
                                  ),
                                )),
                            Positioned(
                                top:30,
                                left: 30,
                                child: Center(
                                  child: Icon(
                                      Icons.hotel_outlined,
                                    size: 30,
                                  ),
                                )),
                            Positioned(
                                bottom: -5,
                                left: 22,
                                child: CustomText(text: 'Hotels',size: 16,fontWeight: FontWeight.w400,))
                          ]
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                        // color: Colors.green
                      ),
                      child: Stack(
                          children:[
                            Positioned(
                              top:10,
                              left: 10,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 2,color: Colors.grey),
                                    borderRadius: BorderRadius.circular(11)
                                ),
                              ),
                            ),
                            Positioned(
                                top:40,
                                left: 40,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.bodycolor
                                  ),
                                )),
                            Positioned(
                                top:30,
                                left: 30,
                                child: Center(
                                  child: Icon(
                                      Icons.event_available_outlined,
                                    size: 30,
                                  ),
                                )),
                            Positioned(
                                bottom: -5,
                                left: 22,
                                child: CustomText(text: 'Events',size: 16,fontWeight: FontWeight.w400,))
                          ]
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 30,),
                Divider(height: 1,indent: 25,endIndent: 25,color: Colors.grey.shade300),
                SizedBox(height: 20,),
                //TRAVEL STORY SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Travel Stories', size: 24, fontWeight: FontWeight.w600),
                    CustomText(text: 'Show All >', size: 14, fontWeight: FontWeight.w400,color: AppColor.bodycolor,)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 280,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection:Axis.horizontal,
                      itemBuilder:(context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 3,vertical: 5),
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(width: 1,color: Colors.grey)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 2,),
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundImage: ExactAssetImage('assets/images/circleavatarimg.jpg'),
                                      ),
                                      SizedBox(width: 5,),
                                      CustomText(text: 'Rondal Johnson', size: 16, fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                  FaIcon(FontAwesomeIcons.heart,color: Colors.grey,)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Container(
                                width: double.infinity,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/circleavatarimg.jpg')
                                  )
                                ),
                              ),
                              SizedBox(height: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: CustomText(text: 'Film Photography Tour:Honai', size: 14, fontWeight: FontWeight.normal),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: CustomText(text: 'Hidden Temples', size: 14, fontWeight: FontWeight.normal),
                                  ),
                                ],
                              )

                            ],


                          ),
                        );
                      },
                  ),
                ),
                SizedBox(height: 20,),
                Divider(height: 1,indent: 25,endIndent: 25,color: Colors.grey.shade300),
                SizedBox(height: 10,),
                //POPULAR DESTINATION SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Popular Destinations', size: 20, fontWeight: FontWeight.w600),
                    CustomText(text: 'Show All >', size: 14, fontWeight: FontWeight.w400,color: AppColor.bodycolor,)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:(context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                  width: double.infinity,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images/circleavatarimg.jpg'),

                                    )
                                  ),
                                ),
                                  Positioned(
                                    right: 3,
                                      top: 5,
                                      child: IconButton(onPressed: (){},icon: FaIcon(FontAwesomeIcons.heart,color: Colors.white,size: 20,),))
                                ]
                              ),
                              CustomText(text: 'Coffee Shop • Cosy', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                              CustomText(text: 'Tranquil Books &\n Coffee', size: 16, fontWeight: FontWeight.w600,color: Colors.black,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.play_arrow,color: Colors.grey,),
                                          CustomText(text: "2.5km", size: 12, fontWeight: FontWeight.normal,color: Colors.grey,)
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade500,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            CustomText(text: '4.5', size: 12, fontWeight: FontWeight.normal,color: Colors.white,),
                                            Icon(Icons.star,color: Colors.white,size: 16,)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )


                            ],
                          ),
                        );
                      }, ),
                ),
                SizedBox(height: 15,),
                //POPULAR EXPERIENCE SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Popular Experiences', size: 20, fontWeight: FontWeight.w600),
                    CustomText(text: 'Show All >', size: 14, fontWeight: FontWeight.w400,color: AppColor.bodycolor,)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(21),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('assets/images/circleavatarimg.jpg'),

                                        )
                                    ),
                                  ),
                                  Positioned(
                                      right: 3,
                                      top: 5,
                                      child: IconButton(onPressed: (){},icon: FaIcon(FontAwesomeIcons.heart,color: Colors.white,size: 20,),))
                                ]
                            ),
                            CustomText(text: 'Street food • walking', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                            CustomText(text: 'Touching Honai-\n vegan food tour', size: 16, fontWeight: FontWeight.w600,color: Colors.black,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    CustomText(text: '\$39/person', size: 12, fontWeight: FontWeight.w400,color: AppColor.bodycolor,),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade500,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CustomText(text: '4.5', size: 12, fontWeight: FontWeight.normal,color: Colors.white,),
                                          Icon(Icons.star,color: Colors.white,size: 16,)
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            )


                          ],
                        ),
                      );
                    }, ),
                ),
                SizedBox(height: 15,),
                //UP COMING EVENTS SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Upcoming Events', size: 20, fontWeight: FontWeight.w600),
                    CustomText(text: 'Show All >', size: 14, fontWeight: FontWeight.w400,color: AppColor.bodycolor,)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(21),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('assets/images/circleavatarimg.jpg'),

                                        )
                                    ),
                                  ),
                                  Positioned(
                                      right: 3,
                                      top: 5,
                                      child: IconButton(onPressed: (){},icon: FaIcon(FontAwesomeIcons.heart,color: Colors.white,size: 20,),))
                                ]
                            ),
                            CustomText(text: 'Today at 8:30 PM', size: 12, fontWeight: FontWeight.normal,color: Colors.red.shade600,),
                            CustomText(text: 'The Romanian -\n Solo Exhibition ', size: 16, fontWeight: FontWeight.w600,color: Colors.black,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_outlined),
                                SizedBox(width: 3,),
                                CustomText(text: 'Vicos art Studio', size: 14, fontWeight: FontWeight.normal,color: Colors.grey,)

                              ],
                            )


                          ],
                        ),
                      );
                    }, ),
                ),
                SizedBox(height: 15,),
                Divider(height: 1,indent: 25,endIndent: 25,color: Colors.grey.shade300),
                SizedBox(height: 15,),
                //LOCAL GUIDE SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Localguides', size: 20, fontWeight: FontWeight.w600),
                    CustomText(text: 'Show All >', size: 14, fontWeight: FontWeight.w400,color: AppColor.bodycolor,)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/circleavatarimg.jpg'
                                    )
                                )
                            ),
                          ),


                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CustomText(text: 'Minh Ngoc', size: 18, fontWeight: FontWeight.w600),
                                ],
                              ),
                            ],
                          ),
                          CustomText(text: 'Sports  • Music  • Nightlife', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                          Row(
                            children: [
                              CustomText(text: '\$5', size: 12, fontWeight: FontWeight.normal,color: AppColor.bodycolor,),
                              SizedBox(height: 5,),
                              CustomText(text: '/hour', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                ),
                SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/circleavatarimg.jpg'
                                    )
                                )
                            ),
                          ),


                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CustomText(text: 'Minh Ngoc', size: 18, fontWeight: FontWeight.w600),
                                ],
                              ),
                            ],
                          ),
                          CustomText(text: 'Sports  • Music  • Nightlife', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                          Row(
                            children: [
                              CustomText(text: '\$5', size: 12, fontWeight: FontWeight.normal,color: AppColor.bodycolor,),
                              SizedBox(height: 5,),
                              CustomText(text: '/hour', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                ),
                SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/circleavatarimg.jpg'
                                    )
                                )
                            ),
                          ),


                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CustomText(text: 'Minh Ngoc', size: 18, fontWeight: FontWeight.w600),
                                ],
                              ),
                            ],
                          ),
                          CustomText(text: 'Sports  • Music  • Nightlife', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                          Row(
                            children: [
                              CustomText(text: '\$5', size: 12, fontWeight: FontWeight.normal,color: AppColor.bodycolor,),
                              SizedBox(height: 5,),
                              CustomText(text: '/hour', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                ),
                SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/circleavatarimg.jpg'
                                    )
                                )
                            ),
                          ),


                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CustomText(text: 'Minh Ngoc', size: 18, fontWeight: FontWeight.w600),
                                ],
                              ),
                            ],
                          ),
                          CustomText(text: 'Sports  • Music  • Nightlife', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                          Row(
                            children: [
                              CustomText(text: '\$5', size: 12, fontWeight: FontWeight.normal,color: AppColor.bodycolor,),
                              SizedBox(height: 5,),
                              CustomText(text: '/hour', size: 12, fontWeight: FontWeight.normal,color: Colors.grey,),
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                ),
              ],
            ),
          ),

        ),
      ),
          bottomNavigationBar: NavigationBar(
            height: 50.0,
        indicatorShape: CircleBorder(),

        indicatorColor: AppColor.bodycolor,
        destinations: [
          NavigationDestination(
               icon: FaIcon(FontAwesomeIcons.globe),
              label: 'Home'),
          NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.plane),
              label: 'Travel'),
          NavigationDestination(
              icon: Icon(Icons.feedback_outlined),
              label: 'Feedback'),
          NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'Profile')
      ],
    ),
    );
  }
}
