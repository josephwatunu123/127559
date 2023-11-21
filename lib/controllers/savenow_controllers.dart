import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:save_app/authentication/authentication.dart';

class SaveNowController extends GetxController{
  static SaveNowController get instance => Get.find();

  final amountEntered = TextEditingController();


  void UpdateAmount(String amount, String gid)async{
    print("We reached the controlelrs and passed amoung ${amountEntered.text}");
    await AuthenticationRepository.instance.updateGoalDeposit(amount: amount, gid: gid);
  }
}