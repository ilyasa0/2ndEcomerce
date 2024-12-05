import 'package:ecomerce/preferences/assets.dart';
import 'package:ecomerce/preferences/color.dart';
import 'package:ecomerce/preferences/preferences.dart';
import 'package:flutter/material.dart';

import '../../models/product_model.dart';
part 'sections/header_section.dart';
part 'sections/content.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> categoryData=[
    'All shoes',
    'Running',
    'Training',
    'Basket',
    'Hiking',

  ];

  int selectedIndex = 0 ;

  List<Widget> content=[
    AllShoes(),
    RunningShoes(),
    TrainingShoes(),
    BasketballShoes(),
    HikingShoes(),
  ];



  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        _HeaderSection(),
         SizedBox(
          height: 30,
        ),
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  width: 83,
                  decoration: BoxDecoration(
                      color: selectedIndex == index ? AppColor.primaryColor :  Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: selectedIndex== index ? Colors.transparent:const Color(0XFF302F37)
                      )
                  ),

                  child: Center(child: Text( categoryData[index]
                    ,style: TextStyle(
                        color: selectedIndex == index ? Colors.white :  const Color(0XFF504F5E),
                        fontWeight: FontWeight.w500,
                        fontSize: 13
                    ),)),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 16,
              );
            },
            itemCount: categoryData.length,
          ),
        ),

      ),
        const SizedBox(height: 30,),
        content[selectedIndex],
      ],
    );
  }
}


