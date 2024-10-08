
import 'package:flutter/material.dart';

import '../../../utility/image_path.dart';
import '../../../utility/t_text_style.dart';


class ContainerResuable extends StatelessWidget {
  const ContainerResuable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            offset: const Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical:30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(ImagePath.kola,height:62,width: 104,)),
            const SizedBox(height: 17,),
            Text("Red Apple",style: TTextStyle.boldText),

            Text("1kg, Priceg",style: TTextStyle.smallText),
            const SizedBox(height: 17,),
            //Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("\$4.99",style: TextStyle(
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

    );
  }
}