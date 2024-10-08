
import 'package:flutter/material.dart';

import '../../../componement/size_box.dart';
import '../../utility/app_color.dart';
import '../../utility/image_path.dart';
import '../../utility/t_text_style.dart';
import '../product_details/product_details.dart';
import 'widgets/carsuel_slider.dart';
import 'widgets/container_resuable.dart';
import 'widgets/groucs_resuable.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <HomeModel>home=[
    HomeModel(image:ImagePath.kola, title: 'Organic Bananas', subtitle: '7pcs, Priceg', prices: '\$4.99'),
    HomeModel(image:ImagePath.ap, title: 'Red Apple', subtitle: '1kg, Priceg', prices: '\$4.99'),
  ];

  List < LastSliderModel>item=[
    LastSliderModel(image:ImagePath.mo, title: 'Beef Bone', subtitle: '1kg, Priceg', prices: '\$4.99'),
    LastSliderModel(image:ImagePath.murgi, title: 'Broiler Chicken', subtitle: '1kg, Priceg', prices: '\$4.99'),
  ];

  List <GroicesModel>grocies=[
    GroicesModel(image:ImagePath.tomato, title: 'Beef Bone', subtitle: '1kg, Priceg', prices: '\$4.99'),
    GroicesModel(image:ImagePath.ruti, title: 'Broiler Chicken', subtitle: '1kg, Priceg', prices: '\$4.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(

                children: [
                  SizedBox(height: 10,),
                  Image.asset(ImagePath.red),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: (){

                          },
                          child: Icon(Icons.location_on)),
                      Text("Dhaka, Banassre",style: TTextStyle.homeTextBan),
                    ],
                  ),
                  sizedBoxH(10),
                  Container(
                    height: 51,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: TColor.searchColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search Store',
                        hintStyle: TextStyle(
                          color: TColor.textHinColor,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none
                        ),

                      ),
                    ),
                  ),
                  sizedBoxH(20),
                  CaruelSlider(),
                  sizedBoxH(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Exclusive Offer",style: TTextStyle.rowTitle),
                     Text("See all",style: TTextStyle.rowTitleColor),

                    ],
                  ),
                  sizedBoxH(16),



                  SizedBox(
                    height: 250,
                    child: ListView.separated(

                      itemCount: home.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails()));
                          },
                          child: Container(
                            height: 248,
                            width: 172,

                            decoration: BoxDecoration(

                              color: Colors.white, // Background color
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5), // Border color
                                width: 1,           // Border width
                              ),


                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.10),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0), // Shadow position
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical:30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Image.asset(home[index].image ?? '',height:62,width: 104,)),
                                  SizedBox(height: 17,),
                                  Text(home[index].title ?? '',style: TTextStyle.boldText),

                                  Text(home[index].subtitle ?? '',style: TTextStyle.smallText),
                                  SizedBox(height: 17,),
                                  //Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(home[index].prices ?? '',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.1,
                                      ),),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          color: Color(0xff53B175),
                                          borderRadius: BorderRadius.circular(17),
                                        ),
                                        child: Icon(Icons.add,color: Colors.white,),
                                      )


                                    ],
                                  )


                                ],
                              ),
                            ),

                          ),
                        );


                        // return InkWell(
                        //     onTap: (){
                        //       Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails()));
                        //     },
                        //     child: ContainerResuable());

                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),
                  SizedBox(height: 16,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best Selling",style: TTextStyle.rowTitle),
                      Text("See all",style: TTextStyle.rowTitleColor),

                    ],
                  ),
                  sizedBoxH(16),



                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: grocies.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return Container(
                          height: 248,
                          width: 172,

                          decoration: BoxDecoration(

                            color: Colors.white, // Background color
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5), // Border color
                              width: 1,           // Border width
                            ),


                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.10),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 0), // Shadow position
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical:30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(child: Image.asset(grocies[index].image ?? '',height:62,width: 104,)),
                                SizedBox(height: 17,),
                                Text(grocies[index].title ?? '',style: TTextStyle.boldText),

                                Text(grocies[index].subtitle ?? '',style: TTextStyle.smallText),
                                SizedBox(height: 17,),
                                //Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(grocies[index].prices ?? '',style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.1,
                                    ),),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xff53B175),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )


                                  ],
                                )


                              ],
                            ),
                          ),

                        );

                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Groceries",style: TTextStyle.rowTitle),
                      Text("See all",style: TTextStyle.rowTitleColor),

                    ],
                  ),


                  sizedBoxH(12),
                  SizedBox(
                    height: 105,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return  GroceriesResuble();

                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),




                  SizedBox(height: 16,),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: item.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return Container(
                          height: 248,
                          width: 172,

                          decoration: BoxDecoration(

                            color: Colors.white, // Background color
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5), // Border color
                              width: 1,           // Border width
                            ),


                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.10),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 0), // Shadow position
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical:30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(child: Image.asset(item[index].image ?? '',height:62,width: 104,)),
                                SizedBox(height: 17,),
                                Text(item[index].title ?? '',style: TTextStyle.boldText),

                                Text(item[index].subtitle ?? '',style: TTextStyle.smallText),
                                SizedBox(height: 17,),
                                //Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(item[index].prices ?? '',style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.1,
                                    ),),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xff53B175),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )


                                  ],
                                )


                              ],
                            ),
                          ),

                        );

                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),
                  SizedBox(height: 15,),







                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

class HomeModel{

  final String? image;
  final String? title;
  final String? subtitle;
  final String? prices;
  HomeModel( { required this.image,required this.title,required this.subtitle,required this.prices,});


}


class LastSliderModel{

  final String? image;
  final String? title;
  final String? subtitle;
  final String? prices;
  LastSliderModel( { required this.image,required this.title,required this.subtitle,required this.prices,});


}

class GroicesModel{

  final String? image;
  final String? title;
  final String? subtitle;
  final String? prices;
  GroicesModel( { required this.image,required this.title,required this.subtitle,required this.prices,});


}