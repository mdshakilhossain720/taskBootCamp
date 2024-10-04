import 'package:flutter/material.dart';
import 'package:taskappsui/core/view/utility/image_path.dart';

import '../../utility/t_text_style.dart';



class ExpolerSearchPage extends StatefulWidget {
  const ExpolerSearchPage({super.key});

  @override
  State<ExpolerSearchPage> createState() => _ExpolerSearchPageState();
}

class _ExpolerSearchPageState extends State<ExpolerSearchPage> {

   List<SearchExpolerModel> items=[
    SearchExpolerModel(image: ImagePath.egg1, title: 'Egg Chicken Red', subtitle: '4pcs, Price', prices: '\$1.99',),
     SearchExpolerModel(image: ImagePath.egg2, title: 'Egg Chicken White', subtitle: '180g, Price', prices: '\$1.50',),
     SearchExpolerModel(image: ImagePath. hii, title: 'Egg Pasta ', subtitle: '30gm, Price', prices: '\$15.99',),
     SearchExpolerModel(image: ImagePath.eggNoddle, title: 'Egg Noodles', subtitle: '2L, Price', prices: '\$15.99',),
     SearchExpolerModel(image: ImagePath.chips, title: 'Mayonnais Eggless', subtitle: '4pcs, Price', prices: '\$15.99',),
     SearchExpolerModel(image: ImagePath.boim, title: 'Egg Noodles', subtitle: '4pcs, Price', prices: '\$15.99',),

     // SearchExpolerModel(image: ImagePath.egg1, title: 'Egg Chicken Red', subtitle: '4pcs, Price',),
     // SearchExpolerModel(image: ImagePath.egg1, title: 'Egg Chicken Red', subtitle: '4pcs, Price',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  
                  children: [
                    Container(

                      height: 51,

                      width:300,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F3F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.clear_sharp,
                              size: 18,
                              color: Color(0xffFFFFFF),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            hintText: 'Egg',
                            hintStyle: TTextStyle.egg,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    SizedBox(
                      height: 26,
                        width: 26,
                        child: Image.asset(ImagePath.sear)),
                  ],
                ),


                const SizedBox(
                  height: 24,
                ),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:items.length,
                    shrinkWrap: true,
                    primary: false,

                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 248,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        crossAxisCount: 2),
                    itemBuilder: (context,index){
                      return Container(
                        //height: 248,
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
                              offset: const Offset(0, 0), // Shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12,vertical:30),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(child: Image.asset(items[index].image ?? '',height:62,width: 104,)),
                                const SizedBox(height: 17,),
                                Text(items[index].title ?? '',style: TTextStyle.boldText),
                            
                                Text(items[index].subtitle ?? '',style: TTextStyle.smallText),
                                const SizedBox(height: 17,),
                                //Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(items[index].prices ?? '',style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.1,
                                    ),),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff53B175),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: const Icon(Icons.add,color: Colors.white,),
                                    )
                            
                            
                                  ],
                                )
                            
                            
                              ],
                            ),
                          ),
                        ),

                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class SearchExpolerModel{

 final String? image;
 final String? title;
 final String? subtitle;
 final String? prices;
 SearchExpolerModel( { required this.image,required this.title,required this.subtitle,required this.prices,});


}