
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/dio_helper.dart';
import 'package:gold/main_screen/cubit/states.dart';

class MainCubit extends Cubit<MainStates>{
  MainCubit() : super(MainInitState());

  static MainCubit get(context) => BlocProvider.of(context);

  double? goldPriceD;
  int? goldPriceI;
  double? silverPrice;


  getGoldPrice(){
    print('11111111111111111111111111111111111111');
    DioHelper.getData('XAU/USD')
        .then((value) {
      print('2222222222222222222222222222');

      goldPriceD =value.data["price"];
     goldPriceI= goldPriceD!.round();
          print(value.data["price"]);
          emit(GetGoldtState());
    }).catchError((onError){
      print('${onError.toString()}');
    });


  }

}