// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/main_screen/cubit/states.dart';

import 'cubit/cubit.dart';

class MainScreen extends  StatelessWidget {
   MainScreen({Key? key,}) : super(key: key)  ;
 double? ouncePrice;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => MainCubit()..getGoldPrice(),
      child: BlocConsumer<MainCubit,MainStates>(
        listener: (context, state) {

        },
        builder: (context, state){
          return Scaffold(
            backgroundColor: Colors.grey[900],

            appBar: AppBar(
              backgroundColor: Colors.black,
              title:  Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('TODAY',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/20,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color:  Colors.white,
                          shadows: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                    2,2
                                ),
                                blurRadius: 5
                            )
                          ]
                      ),
                    ),
                    Text(' PRICE',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/20,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color:  Colors.yellow[900],
                          shadows: [
                            BoxShadow(
                                color: Colors.yellowAccent[100]!,
                                offset: Offset(
                                    0,0
                                ),
                                blurRadius: 5
                            )
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                
                color: Colors.black87,
                // boxShadow: [
                //   BoxShadow(
                //     offset: Offset(
                //       5,5
                //     ),
                //     blurRadius: 5,
                //   ),
                //
                // ],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/gold.png',
                      height: MediaQuery.of(context).size.height/4,
                      width: MediaQuery.of(context).size.width/2.5,
                      ),
                       Text('GOLD',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/9,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        color:  Colors.yellow[900],
                        shadows: [
                          BoxShadow(
                            color: Colors.yellowAccent,
                            offset: Offset(
                              1,1
                            ),
                            blurRadius: 5
                          )
                        ]
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text(' Gram 24k:',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${MainCubit.get(context).goldPriceI}',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color:  Colors.yellow[900],
                          shadows: [
                            BoxShadow(
                                color: Colors.yellowAccent,
                                offset: Offset(
                                    0,0
                                ),
                                blurRadius: 1                            )
                          ],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(' Gram 21k:',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${MainCubit.get(context).goldPriceI}',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color:  Colors.yellow[900],
                          shadows: [
                            BoxShadow(
                                color: Colors.yellowAccent,
                                offset: Offset(
                                    0,0
                                ),
                                blurRadius: 1
                            )
                          ],                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(' Gram 18k:',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${MainCubit.get(context).goldPriceI}',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color:  Colors.yellow[900],
                          shadows: [
                            BoxShadow(
                                color: Colors.yellowAccent,
                                offset: Offset(
                                    0,0
                                ),
                                blurRadius: 1
                            )
                          ],
                          fontWeight: FontWeight.bold,
                        ),
                      ),




                      
                      
                      
                      //
                      // Text('Ounce'),
                      // Text('${MainCubit.get(context).goldPriceI}'),
                      //
                      //
                    ],

                  ),
                  Column(
                    children: [
                      Image.asset('assets/silver.png',
                      height: MediaQuery.of(context).size.height/4,
                      width: MediaQuery.of(context).size.width/2.5,
                      ),
                       Text('SILVER',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/9,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        color:  Colors.white,
                        shadows: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              2,2
                            ),
                            blurRadius: 5
                          )
                        ]
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text(' Gram 24k:',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${MainCubit.get(context).goldPriceI}',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color:  Colors.white,
                          shadows: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                    0,0                                ),
                                blurRadius: 5
                            )
                          ],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(' Gram 21k:',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${MainCubit.get(context).goldPriceI}',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color:  Colors.white,
                          shadows: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                    0,0                                ),
                                blurRadius: 5
                            )
                          ],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(' Gram 18k:',
                        style: TextStyle(
                          fontSize: 23,
                          // letterSpacing: 3,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${MainCubit.get(context).goldPriceI}',
                        style: TextStyle(
                          fontSize: 23,
                          color:  Colors.white,
                          shadows: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                    0,0
                                ),
                                blurRadius: 5
                            )
                          ],
                          fontWeight: FontWeight.bold,
                        ),
                      ),




                      
                      
                      
                      //
                      // Text('Ounce'),
                      // Text('${MainCubit.get(context).goldPriceI}'),
                      //
                      //
                    ],

                  ),
                ],


              ),
            ),
          );
        },
      ),
    );
  }
}
