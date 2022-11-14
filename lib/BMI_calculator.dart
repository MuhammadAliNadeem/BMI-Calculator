// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:bmi_calculator/calculationResult.dart';
import 'package:bmi_calculator/data/calculationBrain.dart';
import 'package:bmi_calculator/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:bmi_calculator/buttons/plus_minus_buttons.dart';
import 'package:bmi_calculator/data/iconContent.dart';
import 'package:bmi_calculator/data/mycontainer.dart';

import 'buttons/calculationButton.dart';
enum Gender{
      male,
     female,
     activeCardColour
    }
    int height = 120;
    int weight =50;
    int age =23;
   
class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({super.key});
  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {
    Gender selectedgender=Gender.activeCardColour;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          backgroundColor:Color(0xFF0A0E21) ,
          title: Center(child: "BMI Calculator".text.make()),
        ),
      body: Column(
        children: [
         Expanded(
          flex: 2,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Expanded(
               
                  child: MyContainer(
                  color: selectedgender==Gender.male?activeCardColour:inactivecardcolour,
                  onpress: () {
                    setState(() {
                      selectedgender=Gender.male;
                    });
                  },
                  cardchild:IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: "Male",
                  ) ,
                            ),
                
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Expanded(
                  child: MyContainer(
                  color: selectedgender==Gender.female?activeCardColour:inactivecardcolour,
                  onpress: () {
                    setState(() {
                      selectedgender=Gender.female;
                    });
                  },
                   cardchild: IconContent(
                                icon: FontAwesomeIcons.venus,
                                  label: "Female",
      
                   ) 
                  ),
                ),
              
            ]
           ).p(20),
         ),
       Expanded(
        flex: 2,
         child: SizedBox(
          width: 360,
          child: MyContainer(
           onpress: () {
              setState(() {
  
              });
            },
            color:inactivecardcolour,
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Height".text.xl.color(Colors.white70).make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
                  children: [
                    height.text.xl4.make(),
                    "cm".text.color(Colors.white70).make()
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    activeTrackColor:Colors.white ,
                    thumbColor:  Color(0xFFEB1555),
                    overlayColor:  Color(0x29EB1555),
                  ),
                  child: Slider(value: height.toDouble(),
                  min:90,
                  max: 240,
                  onChanged: (double value) {
                    setState(() {
                    height=value.round();
                    });
                  }),
                )
              ],
            )
            )
            ),
       ),
         Expanded(
          flex: 2,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
             // ignore: prefer_const_literals_to_create_immutables
             children: [
             Expanded(child: MyContainer(
              onpress: () {
              setState(() {
               
              });
            },
              color:inactivecardcolour,
              cardchild:Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Weight".text.xl.color(Colors.white70).make(),
                weight.text.xl4.make(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Buttons(icon:  FontAwesomeIcons.minus, ontap: ( ) {
                      setState(() {
                        weight--;
                      });
                      } ),
                     Buttons(icon: FontAwesomeIcons.plus, ontap: () { 
                      setState(() {
                        weight++;
                      });
                     })
                    ],
                  ),
                )
                
              ],
            )
              )
              ),
              const Padding(padding: EdgeInsets.all(10)),
             Expanded(child: MyContainer(
              onpress: () {
              setState(() {
            
              });
            },
              color: inactivecardcolour,
              cardchild:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Age".text.xl.color(Colors.white70).make(),
                age.text.xl4.make(),
                 Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Buttons(icon: FontAwesomeIcons.minus, ontap: () {setState(() {
                        age--;
                      }); } ),
                     Buttons(icon: FontAwesomeIcons.plus, ontap: () {setState(() {
                        age++;
                        
                      }); })
                      
                    ],
                  ),
                )
              ],
            ) 
              )
              )
             ],
           ).p(20),
         ),
        
         BottomButton(
          onpress: ()  {

           CalculationBrain cal =CalculationBrain(height: height, weight: weight);

       Navigator.push(context, MaterialPageRoute(builder:(context) => ResultPage(
        textresult: cal.getResult(),
        bmiresult: cal.getBMI(),
        interpotationresult: cal.getinterpotation(),
       )
       )
       );
       },
       title: "CALCULATE")
        ],
        
      ),
    );
    
}
}





