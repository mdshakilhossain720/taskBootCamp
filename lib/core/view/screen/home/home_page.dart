
import 'package:flutter/material.dart';

import '../../../componement/size_box.dart';
import '../../utility/app_color.dart';
import '../../utility/image_path.dart';
import '../../utility/t_text_style.dart';
import 'widgets/carsuel_slider.dart';
import 'widgets/container_resuable.dart';
import 'widgets/groucs_resuable.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  Image.asset(ImagePath.appLogo),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (_)=>LocationPage()));
                          },
                          child: Icon(Icons.location_on)),
                     // Text("Dhaka, Banassre",style: TTextStyle.homeTextBan),
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
                  sizedBoxH(12),



                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return InkWell(
                            onTap: (){
                             // Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails()));
                            },
                            child: ContainerResuable());

                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10,);
                    },),
                  ),
                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Text("Best Selling",style: TTextStyle.rowTitle),
                     // Text("See all",style: TTextStyle.rowTitleColor),

                    ],
                  ),
                  sizedBoxH(12),



                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return ContainerResuable();

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

                  SizedBox(height: 15,),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index){
                        return ContainerResuable();

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