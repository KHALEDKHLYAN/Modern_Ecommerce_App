import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderne_app/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variable 
  final pageController = PageController(); 
  Rx<int> currentPageIndex = 0.obs;

  //Update Current Indexwhen Page Scroll
  void updatePageIndicator(index) =>
    currentPageIndex.value = index;
  

  //Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update current Index &Jump next page
  void nextPage() {
    // currentPageIndex.value += 1;
    if (currentPageIndex.value ==2){
      Get.offAll(LoginScreen());

    }else{
      int page = currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }

  }

//Update Current Index& Jump to the lat page

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
