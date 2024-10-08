import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskappsui/core/componement/size_box.dart';
import 'package:taskappsui/core/view/utility/image_path.dart';

import '../../utility/t_text_style.dart';
import '../BottomNavBar/bottom_nav_bar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(ImagePath.signIn,height: 300,width: 413,),
              sizedBoxH(35),
               Text("Get your groceries\nwith nectar",style:TTextStyle.sig),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(ImagePath.flag),
                  hintText: '+880',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily:'Gilroy-Medium',
                    color: Color(0xff030303),
                  )
                ),
          
              ),sizedBoxH(30),
               Center(
                child: Text("Or connect with social media",style: TTextStyle.social),
              ),
              sizedBoxH(20),
              Container(
                height: 67,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff5383EC),
                  borderRadius: BorderRadius.circular(19),
          
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    sizedBoxW(10),

                    Image.asset(ImagePath.google,height: 24,width: 22,),
                    sizedBoxW(40),
                     Text("Continue with Google",style:TTextStyle. google )
                  ],
                ),
              ),
              sizedBoxH(20),
              InkWell(
                onTap: (){
                  Get.to(()=>const BottomNavBar());
                },
                child: Container(
                  height: 67,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff4A66AC),
                    borderRadius: BorderRadius.circular(19),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      sizedBoxW(10),
                      Image.asset(ImagePath.fb,height: 24,width: 22,),
                      sizedBoxW(40),
                       Text("Continue with Facebook",style: TTextStyle. google )
                    ],
                  ),
                ),
              ),
              sizedBoxH(50),
            ],
          ),
        ),
      ),


    );
  }
}
